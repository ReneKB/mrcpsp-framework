package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.*;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.OptimumReference;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.service.BenchmarkLoaderService;
import de.uol.sao.rcpsp_framework.service.LatexService;
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

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;
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
    LatexService latexService;

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

        Map<SolverPerformanceResultEntry, List<StatisticValue>> benchmarkMakespanResults = Collections.synchronizedMap(new HashMap<>());
        Map<SolverPerformanceResultEntry, List<StatisticValue>> benchmarkRobustnessResults = Collections.synchronizedMap(new HashMap<>());

        List<SolverPerformanceResultEntry> feasibleOptimalList = Collections.synchronizedList(new ArrayList<>());

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

            Map<Integer, List<SolverPerformanceResultEntry>> experimentSolverResultMap = new HashMap<>();
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
                            schedule = solver.algorithm(benchmark, iteration, robustnessMetric, null);
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

            // Determine the mean makespan of the current benchmark
            double meanMakespan = optimumExists && optimumReference.isSolvable() ? optimumReference.getMakespan() : this.getMeanMetric(experimentSolverResultMap, Metrics.MAKESPAN, true);

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

            // Compute the list of values of the best solver result
            Map<SolverPerformanceResultEntry, List<Integer>> makespanValues = new HashMap<>();
            Map<SolverPerformanceResultEntry, List<Integer>> robustnessValues = new HashMap<>();
            computeBenchmarkMetrics(robustnessMetric, experimentSolverResultMap, meanMakespan, makespanValues, robustnessValues);

            // Compute the statistic value of the previous calculated values
            Map<SolverPerformanceResultEntry, StatisticValue> makespanStatistic = new HashMap<>();
            Map<SolverPerformanceResultEntry, StatisticValue> robustnessStatistic = new HashMap<>();
            fillBenchmarkStatisticValue(meanMakespan, makespanValues, robustnessValues, makespanStatistic, robustnessStatistic);

            // Add the single benchmark results into the overall results
            fillOverallBenchmarkStatistic(benchmarkMakespanResults, makespanStatistic);
            fillOverallBenchmarkStatistic(benchmarkRobustnessResults, robustnessStatistic);
            computeFeasibleAndOptimalAmount(feasibleOptimalList, optimumExists, meanMakespan, makespanValues, makespanStatistic);

            // Output the best benchmark results (in case the size equals 1)
            outputBenchmarkResult(options, robustnessMetric, benchmark, bestOverallSchedule, makespanStatistic, robustnessStatistic);
        }

        outputOverallAlgorithmSolutions(filename, benchmarks, iterations, solvers, benchmarkMakespanResults, benchmarkRobustnessResults, feasibleOptimalList);
    }

    private void computeFeasibleAndOptimalAmount(List<SolverPerformanceResultEntry> feasibleOptimalList, boolean optimumExists, double meanMakespan, Map<SolverPerformanceResultEntry, List<Integer>> makespanValues, Map<SolverPerformanceResultEntry, StatisticValue> makespanStatistic) {
        makespanStatistic.keySet().forEach(key -> {
            int index = feasibleOptimalList.indexOf(key);

            SolverPerformanceResultEntry entry;
            if (index == -1) {
                entry = key;
                feasibleOptimalList.add(key);
            }
            else
                entry = feasibleOptimalList.get(index);

            List<Integer> makespans = makespanValues.get(key);

            // feasible if makespans list contains elements
            if (!makespans.isEmpty()) {
                entry.setFeasible(entry.getFeasible() + 1);

                // optimal if a value of a solver experiment equals existing optimal
                if (optimumExists && makespans.stream().sorted(Integer::compareTo).findFirst().get() == meanMakespan)
                    entry.setOptimal(entry.getOptimal() + 1);
            }
        });
    }

    private void outputBenchmarkResult(Set<String> options,
                                       Metric<?> robustnessMetric,
                                       Benchmark benchmark,
                                       AtomicReference<Schedule> bestOverallSchedule,
                                       Map<SolverPerformanceResultEntry, StatisticValue> makespanStatistic,
                                       Map<SolverPerformanceResultEntry, StatisticValue> robustnessStatistic) {
        if (bestOverallSchedule.get() != null) {
            log.info("");
            log.info("All experiments task have been finished for " + benchmark.getName() + "!");
            log.info("Makespan: ");
            makespanStatistic.forEach((solverPerformanceResultEntry, statisticValue) -> {
                log.info(solverPerformanceResultEntry + ": " + statisticValue);
            });

            log.info("");
            log.info("Robustness: ");
            robustnessStatistic.forEach((solverPerformanceResultEntry, statisticValue) -> {
                log.info(solverPerformanceResultEntry + ": " + statisticValue);
            });

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

    private void fillOverallBenchmarkStatistic(Map<SolverPerformanceResultEntry, List<StatisticValue>> benchmarkMakespanResults,
                                               Map<SolverPerformanceResultEntry, StatisticValue> benchmarkStatistic) {
        benchmarkStatistic.forEach((solverPerformanceResultEntry, statisticValue) -> {
            SolverPerformanceResultEntry overallResultEntry = buildOverallResultEntry(solverPerformanceResultEntry);
            List<StatisticValue> results = benchmarkMakespanResults.getOrDefault(overallResultEntry, new ArrayList<>());
            results.add(statisticValue);
            benchmarkMakespanResults.put(overallResultEntry, results);
        });
    }

    private SolverPerformanceResultEntry buildOverallResultEntry(SolverPerformanceResultEntry solverPerformanceResultEntry) {
        return new SolverPerformanceResultEntry(
                null,
                solverPerformanceResultEntry.getIterations(),
                solverPerformanceResultEntry.getSolver(),
                null,
                0, 0
        );
    }

    private void fillBenchmarkStatisticValue(double meanMakespan,
                                             Map<SolverPerformanceResultEntry, List<Integer>> makespanValues,
                                             Map<SolverPerformanceResultEntry, List<Integer>> robustnessValues,
                                             Map<SolverPerformanceResultEntry, StatisticValue> performanceMakespan,
                                             Map<SolverPerformanceResultEntry, StatisticValue> performanceRobustness) {
        for (SolverPerformanceResultEntry variation : makespanValues.keySet()) {
            List<Integer> variationMakespanValues = makespanValues.getOrDefault(variation, new ArrayList<>());
            List<Integer> variationRobustnessValues = robustnessValues.getOrDefault(variation, new ArrayList<>());

            // makespan - std
            double makespanSum = 0;
            for (Integer variationValue : variationMakespanValues) {
                makespanSum += Math.pow(variationValue - meanMakespan, 2);
            }
            makespanSum = makespanSum / variationMakespanValues.size();
            performanceMakespan.put(variation, new StatisticValue(meanMakespan, Math.sqrt(makespanSum)));

            // robustness - mean
            double robustnessMean = variationRobustnessValues.stream().reduce(Integer::sum).orElse(0);
            if (robustnessMean != 0)
                robustnessMean = robustnessMean / variationRobustnessValues.size();

            // robustness std
            double robustnessSum = 0;
            for (Integer variationValue : variationRobustnessValues) {
                robustnessSum += Math.pow(((double) variationValue - robustnessMean), 2);
            }
            robustnessSum = robustnessSum / variationRobustnessValues.size();
            performanceRobustness.put(variation, new StatisticValue(robustnessMean, Math.sqrt(robustnessSum)));
        }
    }

    private void computeBenchmarkMetrics(Metric<?> robustnessMetric,
                                         Map<Integer, List<SolverPerformanceResultEntry>> experimentSolverResultMap,
                                         double meanMakespan,
                                         Map<SolverPerformanceResultEntry, List<Integer>> makespanValues,
                                         Map<SolverPerformanceResultEntry, List<Integer>> robustnessValues) {
        for (SolverPerformanceResultEntry variation : experimentSolverResultMap.getOrDefault(0, new ArrayList<>())) {
            for (int i = 0; i < experimentSolverResultMap.size(); i++) {
                List<SolverPerformanceResultEntry> solverPerformanceResultEntries = experimentSolverResultMap.getOrDefault(i, new ArrayList<>());
                for (SolverPerformanceResultEntry solverPerformanceResultEntry : solverPerformanceResultEntries) {
                    if (variation.equals(solverPerformanceResultEntry)) {
                        List<Integer> makepanValueList = makespanValues.getOrDefault(solverPerformanceResultEntry, new ArrayList<>());
                        List<Integer> robustnessValueList = robustnessValues.getOrDefault(solverPerformanceResultEntry, new ArrayList<>());

                        if (solverPerformanceResultEntry.getBestResult() != null) {
                            int makespan = solverPerformanceResultEntry.getBestResult().computeMetric(Metrics.MAKESPAN);
                            makepanValueList.add(makespan);

                            if (meanMakespan == makespan)
                                robustnessValueList.add((int) solverPerformanceResultEntry.getBestResult().computeMetric(robustnessMetric));
                        }

                        makespanValues.put(solverPerformanceResultEntry, makepanValueList);
                        robustnessValues.put(solverPerformanceResultEntry, robustnessValueList);
                    }
                }
            }
        }
    }

    @SneakyThrows
    private void outputOverallAlgorithmSolutions(
            String filename,
            List<Benchmark> benchmarks,
            List<Integer> iterations,
            List<String> solvers,
            Map<SolverPerformanceResultEntry, List<StatisticValue>> benchmarkMakespanResults,
            Map<SolverPerformanceResultEntry, List<StatisticValue>> benchmarkRobustnessResults,
            List<SolverPerformanceResultEntry> feasibleOptimalEntries) {
        log.info("");
        log.info("Overall Results: ");
        log.info("Makespan: ");
        Map<SolverPerformanceResultEntry, StatisticValue> solverPerformanceResultsMakespan = new HashMap<>();
        Map<SolverPerformanceResultEntry, StatisticValue> solverPerformanceResultsRobustness = new HashMap<>();

        benchmarkMakespanResults.forEach((solverPerformanceResultEntry, statisticValues) -> {
            double makespanMean = statisticValues.stream().map(StatisticValue::getStddev).filter(value -> !Double.isNaN(value)).reduce(Double::sum).orElse(0.0);
            makespanMean /= statisticValues.size();

            double makespanStd = 0;
            for (double value : statisticValues.stream().map(StatisticValue::getStddev).filter(value -> !Double.isNaN(value)).collect(Collectors.toList())) {
                makespanStd += Math.pow((value - makespanMean), 2);
            }
            makespanStd /= statisticValues.size();

            StatisticValue statisticValue = new StatisticValue(makespanMean, makespanStd);
            solverPerformanceResultsMakespan.put(solverPerformanceResultEntry, statisticValue);
            log.info(solverPerformanceResultEntry + ": " + statisticValue);
        });
        log.info("");
        log.info("Robustness: ");
        benchmarkRobustnessResults.forEach((solverPerformanceResultEntry, statisticValues) -> {
            double robustnessStdMean = statisticValues.stream().map(StatisticValue::getStddev).filter(value -> !Double.isNaN(value)).reduce(Double::sum).orElse(0.0);
            robustnessStdMean /= statisticValues.size();

            double robustnessStdStd = 0;
            for (double value : statisticValues.stream().map(StatisticValue::getStddev).filter(value -> !Double.isNaN(value)).collect(Collectors.toList())) {
                robustnessStdStd += Math.pow((value - robustnessStdMean), 2);
            }
            robustnessStdStd /= statisticValues.size();
            robustnessStdStd = Math.sqrt(robustnessStdStd);

            double robustnessMeanMean = statisticValues.stream().map(StatisticValue::getMean).filter(value -> !Double.isNaN(value)).reduce(Double::sum).orElse(0.0);
            robustnessMeanMean /= statisticValues.size();

            double robustnessMeanStd = 0;
            for (double value : statisticValues.stream().map(StatisticValue::getMean).filter(value -> !Double.isNaN(value)).collect(Collectors.toList())) {
                robustnessMeanStd += Math.pow((value - robustnessMeanMean), 2);
            }
            robustnessMeanStd /= statisticValues.size();
            robustnessMeanStd = Math.sqrt(robustnessMeanStd);

            StatisticValue statisticValue = new StatisticValue(robustnessMeanMean, robustnessMeanStd);
            solverPerformanceResultsRobustness.put(solverPerformanceResultEntry, statisticValue);
            log.info(solverPerformanceResultEntry + ": [Mean]: " + statisticValue + " [Std]: " + new StatisticValue(robustnessStdMean, robustnessStdStd));
        });
        log.info("");

        this.logLatex(filename, benchmarks, iterations, solvers, solverPerformanceResultsMakespan, solverPerformanceResultsRobustness, feasibleOptimalEntries);
    }

    private double getMeanMetric(Map<Integer,
            List<SolverPerformanceResultEntry>> experimentSolverResultMap, Metric<?> metric,
                                 boolean globalMinimum) {
        double value = globalMinimum ? Double.MAX_VALUE : Double.MIN_VALUE;

        for (int i = 0; i < experimentSolverResultMap.size(); i++) {
            List<SolverPerformanceResultEntry> solverPerformanceResultEntries = experimentSolverResultMap.get(i);
            for (SolverPerformanceResultEntry solverPerformanceResultEntry : solverPerformanceResultEntries) {
                if (solverPerformanceResultEntry.getBestResult() != null) {
                    value = globalMinimum ? Math.min(value, (int) solverPerformanceResultEntry.getBestResult().computeMetric(metric)) :
                            Math.max(value, (int) solverPerformanceResultEntry.getBestResult().computeMetric(metric));
                }
            }
        }

        return value != Double.MAX_VALUE && value != Double.MIN_VALUE ? value : 0;
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

    private void logLatex(String filename,
                          List<Benchmark> benchmarks,
                          List<Integer> iterations,
                          List<String> solvers,
                          Map<SolverPerformanceResultEntry, StatisticValue> solverPerformanceResultsMakespan,
                          Map<SolverPerformanceResultEntry, StatisticValue> solverPerformanceResultsRobustness,
                          List<SolverPerformanceResultEntry> feasibleOptimalEntries) throws IOException {
        String benchmarkName = benchmarks.get(0).getName().replaceAll(".mm(\\/|\\\\).*", "");
        String latex = latexService.printLatexTableSolverPerformance(
                "latex/solver_performance.latex",
                benchmarkName,
                solverPerformanceResultsMakespan,
                solverPerformanceResultsRobustness,
                feasibleOptimalEntries,
                solvers,
                iterations,
                benchmarks.size());

        Files.createDirectories(Paths.get("results"));

        FileWriter fileWriter = new FileWriter(filename + ".log");
        fileWriter.write(latex);
        fileWriter.close();
    }

}
