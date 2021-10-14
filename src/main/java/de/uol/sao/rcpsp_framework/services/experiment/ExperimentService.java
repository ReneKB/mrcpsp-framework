package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.services.metrics.Metric;
import de.uol.sao.rcpsp_framework.services.metrics.Metrics;
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

    public void runExperiment(ApplicationArguments args, Benchmark benchmark) {
        Set<String> options = args.getOptionNames();
        List<Integer> iterations = new ArrayList<>();
        List<String> solvers = new ArrayList<>();
        int experiment = 8;

        iterations.add(10000);
        solvers.add("RandomSolver");

        // Prework
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case ITERATIONS:
                    List<String> iterationsStrings = args.getOptionValues(CommandArgsOptions.ITERATIONS.getCommandStr());
                    if (iterationsStrings.size() == 0)
                        log.warn(String.format("No iterations specified. %s will be kept a will be set as default iterations. " +
                                "Usage: --iterations=100,10000,...", iterations));
                    else
                        iterations = iterationsStrings.stream().map(Integer::parseInt).collect(Collectors.toList());
                    break;
                case SOLVERS:
                    List<String> solverStrings = args.getOptionValues(CommandArgsOptions.SOLVERS.getCommandStr());
                    if (solverStrings.size() == 0)
                        log.warn(String.format("No solvers specified. %s will be kept a will be set as default iterations. " +
                                "Usage: --solvers=100,10000,...", iterations));
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

        List<Integer> finalIterations = iterations;
        List<String> finalSolvers = solvers;

        AtomicReference<Schedule> bestOverallSchedule = new AtomicReference<>(null);

        IntStream.range(0, experiment).parallel().forEach(experimentNo -> {
            // Main work
            for (Integer iteration : finalIterations) {
                for (String solverStr : finalSolvers) {
                    Solver solver = beans.getBean(solverStr, Solver.class);
                    Schedule bestSchedule = solver.algorithm(benchmark, iteration);

                    if (bestSchedule != null) {
                        logSchedule(experimentNo, iteration, solverStr, bestSchedule, Collections.singletonList(Metrics.RM1));

                        // Afterwork;
                        if (bestOverallSchedule.get() == null ||
                            (bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN) > bestSchedule.computeMetric(Metrics.MAKESPAN))) {
                            bestOverallSchedule.set(bestSchedule);
                        }
                    } else {
                        logSchedule(experimentNo, iteration, solverStr, bestSchedule, Collections.singletonList(Metrics.RM1));
                    }
                }
            }
        });

        if (bestOverallSchedule.get() != null) {
            log.info("Best Overall Schedule: " + bestOverallSchedule.get().computeMetric(Metrics.MAKESPAN));
            options.forEach(finalOption -> {
                switch (CommandArgsOptions.fromString(finalOption)) {
                    case VISUALIZE:
                        visualizationService.visualizeJobsBenchmark(benchmark);
                        visualizationService.visualizeResults(bestOverallSchedule.get());
                        break;
                    default:
                }
            });
        }
    }

    private void logSchedule(int experimentNo, Integer iteration, String solverStr, Schedule schedule, List<Metric> metrics) {
        Set<String> values = new HashSet<>();
        if (schedule != null) {
            metrics.forEach(metric -> {
                values.add(metric.getClass().getSimpleName() + ": " + metric.computeMetric(schedule));
            });
        }
        log.info(String.format("Experiment %d - Iterations %d - Solver %s # Makespan: %s, Metrics: %s",
                experimentNo,
                iteration,
                solverStr,
                schedule != null ? schedule.computeMetric(Metrics.MAKESPAN).toString() : "No result",
                values));
    }

}
