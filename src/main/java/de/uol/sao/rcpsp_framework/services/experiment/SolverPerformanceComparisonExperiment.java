package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleComparator;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.services.BenchmarkLoaderService;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Service("SolverPerformanceComparisonExperiment")
@Log4j2
public class SolverPerformanceComparisonExperiment implements Experiment {

    @Autowired
    VisualizationService visualizationService;

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    @Autowired
    BeanFactory beans;

    @Data
    @AllArgsConstructor
    class SolverPerformanceResultEntry {
        Benchmark benchmark;
        int iterations;
        String solver;
        Schedule bestResult;
    }

    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        Set<String> options = args.getOptionNames();
        List<Integer> iterations = ExperimentHelper.getIterationsFromArguments(args, Collections.singletonList(5000));
        List<String> solvers = ExperimentHelper.getSolversFromArguments(args, Collections.singletonList("TabuSearch"));
        int experiment = ExperimentHelper.getExperimentFromArguments(args, 4);
        Metric<?> robustnessMetric = ExperimentHelper.getRobustMeasureFunctionFromArgs(args, Metrics.RM1);

        for (Benchmark benchmark : benchmarks) {
            printBenchmarkStartInfo(benchmark, iterations, solvers, robustnessMetric, experiment);

            List<Integer> finalIterations = iterations;
            List<String> finalSolvers = solvers;

            AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

            Map<Integer, List<SolverPerformanceResultEntry>> experimentResultMap = new HashMap<>();
            IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
                // Main work
                for (Integer iteration : finalIterations) {
                    for (String solverStr : finalSolvers) {
                        log.info(String.format("Started experiment %d (Solver: %s, Iterations: %d) ", experimentNo, solverStr, iteration));
                        Solver solver = beans.getBean(solverStr, Solver.class);
                        Schedule bestSchedule = null;
                        try {
                            bestSchedule = solver.algorithm(benchmark, iteration, null);
                        } catch (GiveUpException e) {
                            log.info(String.format("Gave up on experiment %d (Solver: %s, Iterations: %d). ", experimentNo, solverStr, iteration));
                            continue;
                        }

                        log.info(String.format("Completed experiment %d (Solver: %s, Iterations: %d). Best Result: ", experimentNo, solverStr, iteration));
                        ScheduleHelper.outputSchedule(bestSchedule, robustnessMetric);

                        // Add to list
                        List<SolverPerformanceResultEntry> solverPerformanceResultEntries = experimentResultMap.getOrDefault(experimentNo, new ArrayList<>());
                        solverPerformanceResultEntries.add(new SolverPerformanceResultEntry(benchmark, iteration, solverStr, bestSchedule));
                        experimentResultMap.put(experimentNo, solverPerformanceResultEntries);

                        if (bestSchedule != null) {
                            // Afterwork;
                            if (ScheduleHelper.compareSchedule(bestSchedule, bestOverallSchedule.get(), ScheduleComparator.MAKESPAN_AND_RM)) {
                                bestOverallSchedule.set(bestSchedule);
                            }
                        }
                    }
                }
            });

            log.info("");
            log.info("All experiments have been finished! Best Overall Schedule: ");

            if (bestOverallSchedule.get() != null) {
                ScheduleHelper.outputSchedule(bestOverallSchedule.get(), robustnessMetric);
                options.forEach(finalOption -> {
                    switch (CommandArgsOptions.fromString(finalOption)) {
                        case VISUALIZE:
                            log.info("");
                            log.info("Visualizing the result... ");
                            visualizationService.visualizeJobsBenchmark(benchmark);
                            visualizationService.visualizeResults(bestOverallSchedule.get());
                            break;
                        default:
                    }
                });
            }
        }
    }

    private void printBenchmarkStartInfo(Benchmark benchmark, List<Integer> iterations, List<String> solvers, Metric<?> robustnessMetric, int experiment) {
        log.info("");
        log.info(String.format("## Benchmark %s starts with the following metadata ##", benchmark.getName()));
        log.info("Solvers: " + solvers);
        log.info("Experiments: " + experiment);
        log.info("Iterations: " + iterations);
        log.info("Robustness Metric: " + robustnessMetric.getClass().getSimpleName());
        log.info("");
    }


}
