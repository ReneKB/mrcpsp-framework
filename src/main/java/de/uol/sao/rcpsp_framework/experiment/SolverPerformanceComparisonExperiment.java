package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.OptimumReference;
import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.function.MultiObjectiveByPriorityFunction;
import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.service.BenchmarkLoaderService;
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
import java.util.stream.Stream;

@Service("SolverPerformanceExperiment")
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
    @EqualsAndHashCode(exclude = {"benchmark", "bestResult", "feasible", "optimal"})
    public static class SolverPerformanceResultEntry {
        Benchmark benchmark;
        int iterations;
        String solver;
        Schedule bestResult;
        int feasible;
        int optimal;

        public String toString() {
            if (benchmark != null)
                return String.format("[Benchmark: %s, Solver: %s, Iterations: %d]", benchmark.getName(), solver, iterations);
            else
                return String.format("[Solver: %s, Iterations: %d]", solver, iterations);
        }
    }

    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        Set<String> options = args.getOptionNames();
        List<Integer> iterations = ExperimentHelper.getIterationsFromArguments(args, Collections.singletonList(5000));
        List<String> solvers = ExperimentHelper.getSolversFromArguments(args, Collections.singletonList("TabuSearch"));
        int experiment = ExperimentHelper.getExperimentFromArguments(args, 4);
        Metric<?> robustnessMetric = ExperimentHelper.getRobustMeasureFunctionFromArgs(args, Metrics.SF1);
        String filename = ExperimentHelper.getFileName(benchmarks, this.getClass());

        // Init CSV Writer
        FileWriter out = new FileWriter(filename + ".csv");
        String[] csvHeaders = { "benchmark", "solver", "iterations", "makespan-optimum", "makespan", "robustness"};
        CSVPrinter printer = new CSVPrinter(out, CSVFormat.DEFAULT.withHeader(csvHeaders));

        int benchmarkDone = 0;
        int benchmarkRequired = benchmarks.size();

        for (Benchmark benchmark : benchmarks) {
            benchmarkDone++;
            String progress = String.format("(%d/%d): ", benchmarkDone, benchmarkRequired);

            // Determine the mean makespan of the current benchmark
            OptimumReference optimumReference = benchmarkLoaderService.loadOptimum(benchmark);
            boolean optimumExists = optimumReference != null;

            printBenchmarkStartInfo(benchmark, iterations, solvers, robustnessMetric, experiment);
            AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

            Map<Integer, List<SolverPerformanceResultEntry>> experimentSolverResultMap = new ConcurrentHashMap<>();
            IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
                // Main work
                Stream<Integer> iterationsStream = options.contains("parallel") ? iterations.parallelStream() : iterations.stream();

                iterationsStream.forEach(iteration -> {
                    Stream<String> solversStream = options.contains("parallel") ? solvers.parallelStream() : solvers.stream();
                    solversStream.forEach(solverStr -> {
                        log.info(String.format("%s Started experiment task %d (Solver: %s, Iterations: %d) ", progress, experimentNo, solverStr, iteration));
                        Solver solver = beans.getBean(solverStr, Solver.class);
                        Schedule schedule;
                        try {
                            schedule = solver.algorithm(benchmark, iteration, new MultiObjectiveByPriorityFunction(Metrics.MAKESPAN, robustnessMetric));
                            log.info(String.format("%s Completed experiment task %d (Solver: %s, Iterations: %d). Best Result: ", progress, experimentNo, solverStr, iteration));
                            ScheduleHelper.outputSchedule(schedule, robustnessMetric);

                            // Add to list
                            List<SolverPerformanceResultEntry> solverPerformanceResultEntries = experimentSolverResultMap.getOrDefault(experimentNo, new ArrayList<>());
                            solverPerformanceResultEntries.add(new SolverPerformanceResultEntry(benchmark, iteration, solverStr, schedule, 0, 0));
                            experimentSolverResultMap.put(experimentNo, solverPerformanceResultEntries);

                            if (schedule != null) {
                                // Afterwork;
                                if (ScheduleHelper.compareSchedule(schedule, bestOverallSchedule.get(), robustnessMetric)) {
                                    bestOverallSchedule.set(schedule);
                                }
                            }
                        } catch (GiveUpException e) {
                            log.info(String.format("Gave up on experiment task %d (Solver: %s, Iterations: %d). ", experimentNo, solverStr, iteration));
                        }
                    });
                });
            });

            experimentSolverResultMap.forEach((experimentNo, resultEntries) -> {
                try {
                    for (SolverPerformanceResultEntry resultEntry : resultEntries) {
                        Object makespan = -1;
                        Object robustness = -1;

                        Schedule result = resultEntry.getBestResult();
                        if (resultEntry.getBestResult() != null) {
                            makespan = result.computeMetric(Metrics.MAKESPAN);
                            robustness = result.computeMetric(robustnessMetric);
                        }

                        printer.printRecord(benchmark.getName(),
                                resultEntry.getSolver(),
                                resultEntry.getIterations(),
                                optimumExists ? optimumReference.getMakespan() : "",
                                makespan,
                                robustness);
                        printer.flush();
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            });

            // Output the best benchmark results (in case the size equals 1)
            outputBenchmarkResult(options, robustnessMetric, benchmark, bestOverallSchedule);
        }

        log.info("");
    }

    private void outputBenchmarkResult(Set<String> options,
                                       Metric<?> robustnessMetric,
                                       Benchmark benchmark,
                                       AtomicReference<Schedule> bestOverallSchedule) {
        if (bestOverallSchedule.get() != null) {
            log.info("");
            log.info("All experiments task have been finished for " + benchmark.getName() + "!");

            log.info("Best Overall Schedule: ");
            ScheduleHelper.outputSchedule(bestOverallSchedule.get(), robustnessMetric);
            options.forEach(finalOption -> {
                switch (CommandArgsOptions.fromString(finalOption)) {
                    case VISUALIZE:
                        log.info("");
                        log.info("Visualizing the result... ");
                        visualizationService.visualizeBenchmark(benchmark);
                        visualizationService.visualizeSchedule(bestOverallSchedule.get());
                        break;
                    default:
                }
            });
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
