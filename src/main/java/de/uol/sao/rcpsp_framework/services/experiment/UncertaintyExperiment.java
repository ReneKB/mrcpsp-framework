package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.rcpsp_framework.helper.MathHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.helper.StatisticValue;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.services.BenchmarkLoaderService;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;

import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
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
    BeanFactory beans;

    @Data
    @AllArgsConstructor
    @EqualsAndHashCode(exclude = {"benchmark", "schedule"})
    static class ExperimentResult {
        Benchmark benchmark;
        int iterations;
        String solver;
        Schedule schedule;

        public String toString() {
            if (benchmark != null)
                return String.format("[Benchmark: %s, Solver: %s, Iterations: %d]", benchmark.getName(), solver, iterations);
            else
                return String.format("[Solver: %s, Iterations: %d]", solver, iterations);
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
        // Experiment Design
        int uncertaintyExperiments = 3;
        List<UncertaintyModel> uncertaintyModels = new ArrayList<>();
        int trials = 1;
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.00)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.10)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.20)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.30)));
        /*
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.00)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.05)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.10)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.15)));
        uncertaintyModels.add(new UncertaintyModel(new BinomialDistribution(trials, 0.25)));
*/
        // Set<String> options = args.getOptionNames();
        List<Integer> iterations = ExperimentHelper.getIterationsFromArguments(args, Collections.singletonList(5000));
        List<String> solvers = ExperimentHelper.getSolversFromArguments(args, Collections.singletonList("TabuSearch"));
        int experiment = ExperimentHelper.getExperimentFromArguments(args, 4);
        Metric<?> robustnessMetric = ExperimentHelper.getRobustMeasureFunctionFromArgs(args, Metrics.RM1);

        // Actual Execution
        for (Benchmark benchmark : benchmarks) {
            printBenchmarkStartInfo(benchmark, iterations, solvers, robustnessMetric, experiment, uncertaintyModels, uncertaintyExperiments);

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
                        }
                    }
                }
            });

            experimentSolverResultMap.forEach((solverIterationTuple, schedules) -> {
                // Simulate uncertainty
                Map<UncertaintyModel, List<Integer>> actualExecutionResultsMakespan = Collections.synchronizedMap(new LinkedHashMap<>());
                Map<UncertaintyModel, List<Double>> actualExecutionResultsRobustness = Collections.synchronizedMap(new LinkedHashMap<>());

                schedules.forEach(schedule -> uncertaintyModels.forEach(uncertaintyModel -> {
                    actualExecutionResultsMakespan.put(uncertaintyModel, Collections.synchronizedList(new ArrayList<>()));
                    actualExecutionResultsRobustness.put(uncertaintyModel, Collections.synchronizedList(new ArrayList<>()));
                }));

                schedules.parallelStream().forEach(schedule -> uncertaintyModels.forEach(uncertaintyModel -> {
                    IntStream.range(0, uncertaintyExperiments).parallel().forEach(experimentNo -> {
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
}
