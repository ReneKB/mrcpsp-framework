package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.rcpsp_framework.helper.MathHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.helper.StatisticValue;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.OptimumReference;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.service.BenchmarkLoaderService;
import de.uol.sao.rcpsp_framework.service.LatexService;
import de.uol.sao.rcpsp_framework.service.VisualizationService;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import de.uol.sao.rcpsp_framework.solver.Solver;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;

import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.IntStream;

@Log4j2
public abstract class UncertaintyExperiment implements Experiment {

    @Autowired
    VisualizationService visualizationService;

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    LatexService latexService;

    @Autowired
    BeanFactory beans;

    @Data
    @AllArgsConstructor
    @EqualsAndHashCode
    public static class ExperimentResult {
        int iterations;
        String solver;
        UncertaintyModel uncertaintyModel;

        public String toString() {
            return String.format("[Solver: %s, Iterations: %d, Uncertainty: %s]", solver, iterations, uncertaintyModel.toString());
        }
    }

    @Data
    @EqualsAndHashCode
    @AllArgsConstructor
    static class SolverIterationTuple {
        String solver;
        int iterations;
    }

    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        this.filterOneInstancePerParameter(benchmarks);

        // Experiment Design
        int trials = 1;

        List<UncertaintyModel> uncertaintyModels = new ArrayList<>();
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.00)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.10)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.25)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.40)));

        // Set<String> options = args.getOptionNames();
        List<Integer> iterations = ExperimentHelper.getIterationsFromArguments(args, Collections.singletonList(5000));
        List<String> solvers = ExperimentHelper.getSolversFromArguments(args, Collections.singletonList("TabuSearch"));
        int experiment = ExperimentHelper.getExperimentFromArguments(args, 4);
        Metric<?> robustnessMetric = ExperimentHelper.getRobustMeasureFunctionFromArgs(args, Metrics.SF1);

        Map<ExperimentResult, List<Double>> benchmarkMakespanResults = new HashMap<>();

        // Actual Execution
        for (Benchmark benchmark : benchmarks) {
            printBenchmarkStartInfo(benchmark, iterations, solvers, robustnessMetric, experiment, uncertaintyModels, this.getUncertaintyExperiments());
            AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

            Map<SolverIterationTuple, List<Schedule>> experimentSolverResultMap = new HashMap<>();
            IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
                // Main work
                for (Integer iteration : iterations) {
                    for (String solverStr : solvers) {
                        log.info(String.format("Started experiment task %d (Solver: %s, Iterations: %d) ", experimentNo, solverStr, iteration));
                        Solver solver = beans.getBean(solverStr, Solver.class);

                        Schedule bestSchedule;
                        try {
                            bestSchedule = this.buildSolution(benchmark, solver, iteration, robustnessMetric);
                        } catch (GiveUpException e) {
                            log.info(String.format("Gave up on experiment task %d (Solver: %s, Iterations: %d). ", experimentNo, solverStr, iteration));
                            continue;
                        }

                        // Evaluate the best solution for
                        log.info(String.format("Solution found for experiment task %d. ", experimentNo));
                        ScheduleHelper.outputSchedule(bestSchedule, robustnessMetric);

                        SolverIterationTuple solverIterationTuple = new SolverIterationTuple(solverStr, iteration);
                        List<Schedule> solverPerformanceResultEntries = experimentSolverResultMap.getOrDefault(solverIterationTuple, new ArrayList<>());
                        if (bestSchedule != null) {
                            solverPerformanceResultEntries.add(bestSchedule);
                            experimentSolverResultMap.put(solverIterationTuple, solverPerformanceResultEntries);

                            if (ScheduleHelper.compareSchedule(bestSchedule, bestOverallSchedule.get(), robustnessMetric)) {
                                bestOverallSchedule.set(bestSchedule);
                            }
                        }
                    }
                }
            });

            OptimumReference optimumReference = benchmarkLoaderService.loadOptimum(benchmark);
            double optimalMakespan = optimumReference != null && optimumReference.isSolvable() ? optimumReference.getMakespan() : bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN);

            experimentSolverResultMap.forEach((solverIterationTuple, schedules) -> {
                // Simulate uncertainty
                Map<UncertaintyModel, List<Integer>> actualExecutionResultsMakespan = Collections.synchronizedMap(new LinkedHashMap<>());
                Map<UncertaintyModel, List<Double>> actualExecutionResultsRobustness = Collections.synchronizedMap(new LinkedHashMap<>());

                schedules.forEach(schedule -> uncertaintyModels.forEach(uncertaintyModel -> {
                    actualExecutionResultsMakespan.put(uncertaintyModel, Collections.synchronizedList(new ArrayList<>()));
                    actualExecutionResultsRobustness.put(uncertaintyModel, Collections.synchronizedList(new ArrayList<>()));
                }));

                schedules.parallelStream().forEach(schedule -> uncertaintyModels.forEach(uncertaintyModel -> {
                    IntStream.range(0, this.getUncertaintyExperiments()).parallel().forEach(experimentNo -> {
                        try {
                            Schedule uncertaintySchedule = this.buildUncertaintySolution(schedule,
                                    benchmark,
                                    beans.getBean(solverIterationTuple.getSolver(), Solver.class),
                                    solverIterationTuple.getIterations(),
                                    robustnessMetric,
                                    uncertaintyModel);

                            List<Integer> makespanValues = actualExecutionResultsMakespan.get(uncertaintyModel);
                            makespanValues.add(uncertaintySchedule.computeMetric(Metrics.MAKESPAN));
                            actualExecutionResultsMakespan.put(uncertaintyModel, makespanValues);

                            List<Double> robustnessValues = actualExecutionResultsRobustness.get(uncertaintyModel);
                            robustnessValues.add(Double.valueOf(uncertaintySchedule.computeMetric(robustnessMetric).toString()));
                            actualExecutionResultsRobustness.put(uncertaintyModel, robustnessValues);
                        } catch (Exception ignored) { }
                    });
                }));

                // Calculate mean and std of results
                Map<UncertaintyModel, StatisticValue> statisticalResultsMakespan = new LinkedHashMap<>();
                Map<UncertaintyModel, StatisticValue> statisticalResultsRobustness = new LinkedHashMap<>();
                actualExecutionResultsMakespan.forEach((uncertaintyModel, list) -> {
                    if (list != null && !list.isEmpty()) {
                        double mean = MathHelper.calculateMeanFromIntegerList(list);
                        double stddev = MathHelper.calculateStdDevFromIntegerList(list, mean);

                        ExperimentResult experimentResult = new ExperimentResult(solverIterationTuple.getIterations(), solverIterationTuple.getSolver(), uncertaintyModel);
                        List<Double> makespanStdDev = benchmarkMakespanResults.getOrDefault(experimentResult, new ArrayList<>());
                        makespanStdDev.add(MathHelper.calculateStdDevFromIntegerList(list, optimalMakespan));
                        benchmarkMakespanResults.put(experimentResult, makespanStdDev);

                        statisticalResultsMakespan.put(uncertaintyModel, new StatisticValue(mean, stddev));
                    }
                });

                actualExecutionResultsRobustness.forEach((uncertaintyModel, list) -> {
                    if (list != null && !list.isEmpty()) {
                        double mean = MathHelper.calculateMeanFromDoubleList(list);
                        double stddev = MathHelper.calculateStdDevFromDoubleList(list, mean);
                        statisticalResultsRobustness.put(uncertaintyModel, new StatisticValue(mean, stddev));
                    }
                });

                log.info(String.format("Solver: %s, Iterations: %d: ", solverIterationTuple.getSolver(), solverIterationTuple.getIterations()));
                statisticalResultsMakespan.forEach((uncertaintyModel, statisticValue) ->
                        log.info(String.format("> %s: [Makespan %s - Robustness %s]", uncertaintyModel, statisticValue, statisticalResultsRobustness.get(uncertaintyModel))));
            });

            log.info("");
        }

        Map<ExperimentResult, StatisticValue> benchmarkOverallMakespanResults = new HashMap<>();
        benchmarkMakespanResults.forEach((experimentResult, makespanStds) -> {
            double mean = MathHelper.calculateMeanFromDoubleList(makespanStds);
            double std = MathHelper.calculateStdDevFromDoubleList(makespanStds, mean);
            benchmarkOverallMakespanResults.put(experimentResult, new StatisticValue(mean, std));
        });

        // Output in latex
        this.logLatex(benchmarks, uncertaintyModels, iterations, solvers, benchmarkOverallMakespanResults);
    }

    void filterOneInstancePerParameter(List<Benchmark> benchmarks) {
        List<Benchmark> benchmarksToDelete = new ArrayList<>();
        String previousStr = "";
        for (Benchmark benchmark : benchmarks) {
            String currentInstanceStr = benchmark.getName().split("_")[0];
            if (currentInstanceStr.equals(previousStr))
                benchmarksToDelete.add(benchmark);
            previousStr = currentInstanceStr;
        }
        benchmarks.removeAll(benchmarksToDelete);
    }


    private void logLatex(List<Benchmark> benchmarks, List<UncertaintyModel> uncertaintyModels, List<Integer> iterations, List<String> solvers, Map<ExperimentResult, StatisticValue> benchmarkOverallMakespanResults) throws IOException {
        String latex = latexService.printLatexTableUncertainty(
                "latex/uncertainty_experiment.latex",
                benchmarkOverallMakespanResults,
                solvers,
                uncertaintyModels,
                iterations);

        Files.createDirectories(Paths.get("results"));

        String datetime = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss").format(new Date());
        FileWriter fileWriter = new FileWriter(String.format("results/%s_%s_%s.log",
                benchmarks.get(0).getName().replaceAll(".mm(\\/|\\\\).*", ""),
                this.getClass().getSimpleName(),
                datetime));
        fileWriter.write(latex);
        fileWriter.close();
    }

    private void printBenchmarkStartInfo(Benchmark benchmark,
                                         List<Integer> iterations,
                                         List<String> solvers,
                                         Metric<?> robustnessMetric,
                                         int experiment,
                                         List<UncertaintyModel> uncertaintyModels,
                                         int uncertaintyExperiments) {
        log.info("");
        log.info(String.format("## Benchmark %s starts with the following metadata ##", benchmark.getName()));
        log.info("Solvers: " + solvers);
        log.info("Experiments: " + experiment);
        log.info("Iterations: " + iterations);
        log.info("Uncertainty Models: " + uncertaintyModels);
        log.info("Uncertainty Experiments: " + uncertaintyExperiments);
        log.info("Robustness Metric: " + robustnessMetric.getClass().getSimpleName());
        log.info("");
    }

    public abstract Schedule buildSolution(Benchmark benchmark,
                                           Solver solver,
                                           int iterations,
                                           Metric<?> robustnessFunction) throws GiveUpException;

    public abstract Schedule buildUncertaintySolution(Schedule plannedSolution,
                                                      Benchmark benchmark,
                                                      Solver solver,
                                                      int iterations,
                                                      Metric<?> robustnessFunction,
                                                      UncertaintyModel uncertaintyModel);

    public abstract int getUncertaintyExperiments();
}
