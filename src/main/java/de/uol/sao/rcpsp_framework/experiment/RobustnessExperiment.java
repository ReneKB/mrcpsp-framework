package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.OptimumReference;
import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.service.BenchmarkLoaderService;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import de.uol.sao.rcpsp_framework.service.VisualizationService;
import de.uol.sao.rcpsp_framework.solver.Solver;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVPrinter;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.io.FileWriter;
import java.util.*;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.IntStream;

@Log4j2
@Service("RobustnessExperiment")
public class RobustnessExperiment extends UncertaintyPredictiveExperiment {

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
    @EqualsAndHashCode
    public static class ExperimentResult {
        int iterations;
        String solver;
        UncertaintyModel uncertaintyModel;
        Metric robustnessMeasure;

        public String toString() {
            return String.format("[Solver: %s, Iterations: %d, Uncertainty: %s, Robustness: %s]", solver, iterations, uncertaintyModel.toString(), robustnessMeasure);
        }
    }

    @Data
    @EqualsAndHashCode
    @AllArgsConstructor
    static class SolverIterationTuple {
        String solver;
        int iterations;
        Metric robustnessMeasure;
    }

    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        // Experiment Design
        int uncertaintyExperiments = 50;

        ExperimentHelper.filterOneInstancePerParameter(benchmarks);
        List<UncertaintyModel> uncertaintyModels = ExperimentHelper.getUncertaintyIssues();

        List<Metric> robustnessMeasures = new ArrayList<>();
        robustnessMeasures.add(null);
        robustnessMeasures.add(Metrics.SF1);
        robustnessMeasures.add(Metrics.SF2);
        robustnessMeasures.add(Metrics.SF3);
        robustnessMeasures.add(Metrics.SF1_W1);
        robustnessMeasures.add(Metrics.SF2_W1);
        robustnessMeasures.add(Metrics.SF3_W1);
        robustnessMeasures.add(Metrics.SF1_W9);
        robustnessMeasures.add(Metrics.SF2_W9);
        robustnessMeasures.add(Metrics.SF3_W9);

        // Set<String> options = args.getOptionNames();
        List<Integer> iterations = ExperimentHelper.getIterationsFromArguments(args, Collections.singletonList(5000));
        List<String> solvers = ExperimentHelper.getSolversFromArguments(args, Collections.singletonList("TabuSearch"));
        int experiment = ExperimentHelper.getExperimentFromArguments(args, 4);
        String filename = ExperimentHelper.getFileName(benchmarks, this.getClass());

        Map<ExperimentResult, List<Double>> benchmarkMakespanResults = new HashMap<>();

        // Init CSV Writer
        FileWriter out = new FileWriter(filename + ".csv");
        String[] csvHeaders = { "benchmark", "solver", "iterations", "makespan-optimum", "makespan", "robustness", "robustness_measure", "uncertainty_percentage", "makespan_uncertainty", "robustness_uncertainty"};
        CSVPrinter printer = new CSVPrinter(out, CSVFormat.DEFAULT.withHeader(csvHeaders));

        int benchmarkDone = 0;
        int benchmarkRequired = benchmarks.size();

        // Actual Execution
        for (Benchmark benchmark : benchmarks) {
            benchmarkDone++;
            String progress = String.format("(%d/%d): ", benchmarkDone, benchmarkRequired);

            printBenchmarkStartInfo(benchmark, iterations, solvers, experiment, uncertaintyModels, uncertaintyExperiments);
            AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

            Map<SolverIterationTuple, List<Schedule>> experimentSolverResultMap = new ConcurrentHashMap<>();
            IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
                // Main work
                for (Integer iteration : iterations) {
                    for (String solverStr : solvers) {
                        robustnessMeasures.parallelStream().forEach(robustnessMetric -> {
                            log.info(String.format("%s Started experiment task %d (Solver: %s, Iterations: %d, Robustness Measure: %s) ", progress, experimentNo, solverStr, iteration, robustnessMetric));
                            Solver solver = beans.getBean(solverStr, Solver.class);

                            Schedule bestSchedule;
                            try {
                                bestSchedule = this.buildSolution(benchmark, solver, iteration, robustnessMetric);

                                // Evaluate the best solution for
                                log.info(String.format("%s Solution found for experiment task %d. ", progress, experimentNo));
                                ScheduleHelper.outputSchedule(bestSchedule, robustnessMetric);

                                SolverIterationTuple solverIterationTuple = new SolverIterationTuple(solverStr, iteration, robustnessMetric);
                                List<Schedule> solverPerformanceResultEntries = experimentSolverResultMap.getOrDefault(solverIterationTuple, new ArrayList<>());
                                if (bestSchedule != null) {
                                    solverPerformanceResultEntries.add(bestSchedule);
                                    experimentSolverResultMap.put(solverIterationTuple, solverPerformanceResultEntries);

                                    if (ScheduleHelper.compareSchedule(bestSchedule, bestOverallSchedule.get(), robustnessMetric)) {
                                        bestOverallSchedule.set(bestSchedule);
                                    }
                                }
                            } catch (GiveUpException e) {
                                log.info(String.format("Gave up on experiment task %d (Solver: %s, Iterations: %d, Robustness Measure: %s). ", experimentNo, solverStr, iteration));
                            }
                        });
                    }
                }
            });

            // compute the makespan optimum
            OptimumReference optimumReference = benchmarkLoaderService.loadOptimum(benchmark);
            int optimalMakespan = optimumReference != null && optimumReference.isSolvable() ? optimumReference.getMakespan() : bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN);
            log.info("Optimum Makespan: " + optimalMakespan);

            // Simulate uncertainty
            log.info("Run uncertainty scenarios... ");
            experimentSolverResultMap.forEach((solverIterationTuple, schedules) -> {
                log.info(String.format("%s: Uncertainty scenario for solver %s with %d iterations... ", solverIterationTuple.getRobustnessMeasure() != null ? solverIterationTuple.getRobustnessMeasure() : "No RM",
                        solverIterationTuple.getSolver(),
                        solverIterationTuple.getIterations()));

                schedules.parallelStream().forEach(schedule -> uncertaintyModels.forEach(uncertaintyModel -> {
                    IntStream.range(0, uncertaintyExperiments).parallel().forEach(experimentNo -> {
                        try {
                            Schedule uncertaintySchedule = this.buildUncertaintySolution(schedule,
                                    benchmark,
                                    beans.getBean(solverIterationTuple.getSolver(), Solver.class),
                                    solverIterationTuple.getIterations(),
                                    solverIterationTuple.getRobustnessMeasure(),
                                    uncertaintyModel);

                            try {
                                Object makespan = schedule.computeMetric(Metrics.MAKESPAN);
                                Object uncertainty_makespan = uncertaintySchedule.computeMetric(Metrics.MAKESPAN);

                                Object robustness = -1;
                                Object uncertainty_robustness = -1;

                                if (solverIterationTuple.getRobustnessMeasure() != null) {
                                    robustness = schedule.computeMetric(solverIterationTuple.getRobustnessMeasure());
                                    uncertainty_robustness = uncertaintySchedule.computeMetric(solverIterationTuple.getRobustnessMeasure());
                                }

                                synchronized (printer) {
                                    printer.printRecord(benchmark.getName(),
                                            solverIterationTuple.getSolver(),
                                            solverIterationTuple.getIterations(),
                                            optimalMakespan,
                                            makespan,
                                            robustness,
                                            solverIterationTuple.getRobustnessMeasure() != null ? solverIterationTuple.getRobustnessMeasure().toString() : "null",
                                            uncertaintyModel.getModeDelayDistribution().getProbabilityOfSuccess(),
                                            uncertainty_makespan,
                                            uncertainty_robustness);
                                    printer.flush();
                                }
                            } catch (Exception ex) {
                                ex.printStackTrace();
                            }
                        } catch (Exception ignored) { }
                    });
                }));
            });

            log.info("");
        }
    }

    private void printBenchmarkStartInfo(Benchmark benchmark,
                                         List<Integer> iterations,
                                         List<String> solvers,
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
        log.info("");
    }

}
