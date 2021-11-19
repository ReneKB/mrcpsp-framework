package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.experiment.Experiment;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.boot.ApplicationArguments;
import org.springframework.util.Assert;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Log4j2
public class ExperimentHelper {

    public static List<Integer> getIterationsFromArguments(ApplicationArguments args, List<Integer> defaultValue) {
        List<Integer> iterations = new ArrayList<>(defaultValue);
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case ITERATIONS:
                    String commandStr = CommandArgsOptions.ITERATIONS.getCommandStr();
                    List<String> iterationsStrings = args.getOptionValues(commandStr);
                    if (iterationsStrings.size() == 0)
                        log.warn(String.format("No iterations specified. %s will be kept a will be set as default iterations. " +
                                "Usage: --%s=100 --iterations=10000,...", defaultValue));
                    else
                        iterations = iterationsStrings.stream().map(Integer::parseInt).collect(Collectors.toList());
            }
        }

        return iterations;
    }

    public static List<String> getSolversFromArguments(ApplicationArguments args, List<String> defaultValue) {
        List<String> solvers = new ArrayList<>(defaultValue);
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case SOLVERS:
                    String commandStr = CommandArgsOptions.SOLVERS.getCommandStr();
                    List<String> solverStrings = args.getOptionValues(commandStr);
                    if (solverStrings.size() == 0)
                        log.warn(String.format("No solvers specified. %s will be kept a will be set as default solvers. " +
                                "Usage: --%s=RandomSolver --solvers=GeneticAlgorithm", solvers, commandStr));
                    else
                        solvers = solverStrings;
            }
        }

        return solvers;
    }

    public static int getExperimentFromArguments(ApplicationArguments args, int defaultValue) {
        int experiments = defaultValue;
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case EXPERIMENT_N:
                    String commandStr = CommandArgsOptions.EXPERIMENT_N.getCommandStr();
                    List<String> experimentValues = args.getOptionValues(commandStr);
                    if (experimentValues.size() != 1)
                        log.warn(String.format("Amount of experiments not properly set. %d will run. " +
                                "Usage: --%s=10", defaultValue, commandStr));
                    else
                        experiments = Integer.parseInt(experimentValues.get(0));
            }
        }

        return experiments;
    }

    public static int getLimitsFromArgs(ApplicationArguments args, int defaultValue) {
        int limit = defaultValue;
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case LIMIT:
                    String commandStr = CommandArgsOptions.LIMIT.getCommandStr();
                    List<String> limitValues = args.getOptionValues(commandStr);
                    if (limitValues.size() != 1)
                        log.warn(String.format("Limit not properly set. %d will run. " +
                                "Usage: --%s=10", defaultValue, commandStr));
                    else
                        limit = Integer.parseInt(limitValues.get(0));
            }
        }

        return limit;
    }

    public static Metric<?> getRobustMeasureFunctionFromArgs(ApplicationArguments args, Metric<?> defaultValue) {
        Metric<?> robustMeasureFunction = defaultValue;
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case ROBUST:
                    String commandStr = CommandArgsOptions.ROBUST.getCommandStr();
                    List<String> robustnessMeasurements = args.getOptionValues(commandStr);
                    if (robustnessMeasurements.size() != 1)
                        log.warn(String.format("Robustness Measurement not properly set. %s will be used. " +
                                "Usage: --%s=RobustMeasure1", defaultValue, commandStr));
                    else {
                        try {
                            robustMeasureFunction = Metrics.getMetricByName(robustnessMeasurements.get(0));
                            Assert.notNull(robustMeasureFunction, "Robustness Measurement unknown");
                        } catch (Throwable ex) {
                            log.warn(String.format("Robustness Measurement unknown. %s will be used. " +
                                    "Usage: --%s=RobustMeasure1", defaultValue, commandStr));
                        }
                    }
            }
        }

        return robustMeasureFunction;
    }


    public static List<Experiment> getExperimentsFromArguments(ApplicationArguments args, List<Experiment> defaultValue, BeanFactory beanFactory) {
        List<Experiment> experiments = new ArrayList<>(defaultValue);
        Set<String> options = args.getOptionNames();
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case EXPERIMENT:
                    List<String> experimentStrings = args.getOptionValues(CommandArgsOptions.EXPERIMENT.getCommandStr());
                    if (experimentStrings.size() == 0)
                        log.warn(String.format("No experiments specified. %s will be kept a will be set as default experiment. " +
                                "Usage: --experiment=RandomSolver --solvers=GeneticAlgorithm", experiments));
                    else
                        experiments = experimentStrings.stream().map(experimentStr -> beanFactory.getBean(experimentStr, Experiment.class)).collect(Collectors.toList());
            }
        }

        return experiments;
    }
}
