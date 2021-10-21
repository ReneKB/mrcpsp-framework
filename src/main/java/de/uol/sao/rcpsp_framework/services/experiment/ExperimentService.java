package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

@Service
@Log4j2
public class ExperimentService {

    @Autowired
    VisualizationService visualizationService;

    @Autowired
    BeanFactory beans;

    public void runExperiments(ApplicationArguments args, Benchmark benchmark) {
        Set<String> options = args.getOptionNames();
        List<Integer> iterations = new ArrayList<>();
        List<String> solvers = new ArrayList<>();
        Metric<Integer> robustnessMetric = Metrics.RM1;
        int experiment = 1;

        iterations.add(10);
        solvers.add("RandomSolver");

        // Prework
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case ITERATIONS:
                    List<String> iterationsStrings = args.getOptionValues(CommandArgsOptions.ITERATIONS.getCommandStr());
                    if (iterationsStrings.size() == 0)
                        log.warn(String.format("No iterations specified. %s will be kept a will be set as default iterations. " +
                                "Usage: --iterations=100 --iterations=10000,...", iterations));
                    else
                        iterations = iterationsStrings.stream().map(Integer::parseInt).collect(Collectors.toList());
                    break;
                case SOLVERS:
                    List<String> solverStrings = args.getOptionValues(CommandArgsOptions.SOLVERS.getCommandStr());
                    if (solverStrings.size() == 0)
                        log.warn(String.format("No solvers specified. %s will be kept a will be set as default iterations. " +
                                "Usage: --solvers=RandomSolver --solvers=GeneticAlgorithm", iterations));
                    else
                        solvers = solverStrings;
                    break;
                case EXPERIMENT:
                    List<String> experimentValues = args.getOptionValues(CommandArgsOptions.EXPERIMENT.getCommandStr());
                    if (experimentValues.size() != 1)
                        log.warn(String.format("Amount of experiments not properly set. %d will be used. " +
                                "Usage: --experiment=10", iterations));
                    else
                        experiment = Integer.parseInt(experimentValues.get(0));
                default:
            }
        }

        printBenchmarkStartInfo(benchmark, iterations, solvers, robustnessMetric, experiment);

        List<Integer> finalIterations = iterations;
        List<String> finalSolvers = solvers;

        AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

        IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
            // Main work
            for (Integer iteration : finalIterations) {
                for (String solverStr : finalSolvers) {
                    log.info(String.format("Started experiment %d (Solver: %s, Iterations: %d) ", experimentNo, solverStr, iteration));
                    Solver solver = beans.getBean(solverStr, Solver.class);
                    Schedule bestSchedule = solver.algorithm(benchmark, iteration);

                    log.info(String.format("Completed experiment %d (Solver: %s, Iterations: %d). Best Result: ", experimentNo, solverStr, iteration));
                    ScheduleHelper.outputSchedule(bestSchedule, robustnessMetric);

                    if (bestSchedule != null) {
                        // Afterwork;
                        if (bestOverallSchedule.get() == null ||
                            (bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN) > bestSchedule.computeMetric(Metrics.MAKESPAN))) {
                            bestOverallSchedule.set(bestSchedule);
                        } else if(
                         (bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN) == bestSchedule.computeMetric(Metrics.MAKESPAN)) &&
                         (bestOverallSchedule.get().computeMetric(Metrics.RM1) < bestSchedule.computeMetric(Metrics.RM1)))        {
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

    private void printBenchmarkStartInfo(Benchmark benchmark, List<Integer> iterations, List<String> solvers, Metric<Integer> robustnessMetric, int experiment) {
        log.info("");
        log.info(String.format("## Benchmark %s starts with the following metadata ##", benchmark.getName()));
        log.info("Solvers: " + solvers);
        log.info("Experiments: " + experiment);
        log.info("Iterations: " + iterations);
        log.info("Robustness Metric: " + robustnessMetric.getClass().getSimpleName());
        log.info("");
    }


}
