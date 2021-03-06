package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.benchmark.model.Project;
import de.uol.sao.mrcpsp_framework.heuristic.Heuristic;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicDirector;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicSampling;
import de.uol.sao.mrcpsp_framework.heuristic.activities.ActivityHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.activities.RandomActivityHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.LRSHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.ModeHeuristic;
import de.uol.sao.mrcpsp_framework.representation.ActivityMode;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Log4j2
@Service("GeneticAlgorithm")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class GeneticAlgorithmSolver implements Solver {
    @Autowired
    SchedulerService schedulerService;

    @Autowired
    RandomSolver randomSolver;

    int mu = 40;
    int lambda = 50;
    int kappa = 50;
    double sigma = 0.06;

    @Data
    @AllArgsConstructor
    class Solution {
        int generation;
        ScheduleRepresentation scheduleRepresentation;
        double fitness;
    }

    @Override
    public Schedule algorithm(Benchmark benchmark,
                              int iterations,
                              ObjectiveFunction objectiveFunction) {
        List<Solution> population = this.initialPopulation(benchmark, mu, objectiveFunction);
        Schedule scheduleBestSolution = null;

        int i = 0;
        while (i < iterations) {
            for (int offspring = 0; offspring < lambda; offspring++) {
                List<ScheduleRepresentation> parents = this.selectParents(population.stream().map(Solution::getScheduleRepresentation).collect(Collectors.toList()));
                ScheduleRepresentation crossovered = this.crossover(benchmark.getProject(), parents);
                ScheduleRepresentation mutation = this.mutation(benchmark.getProject(), crossovered);
                Solution solution = this.fitness(benchmark, 0, mutation, objectiveFunction);
                population.add(solution);
            }

            List<Solution> newPopulation = this.select(population, mu, kappa);
            if (newPopulation.size() > 2)
                population = newPopulation;

            i += lambda;

            try {
                Schedule generationBestSolution = schedulerService.createSchedule(benchmark,
                        population.stream().sorted(Comparator.comparingDouble(Solution::getFitness)).findFirst().get().getScheduleRepresentation(),
                        null);

                if (ScheduleHelper.compareSchedule(generationBestSolution, scheduleBestSolution, objectiveFunction)) {
                    scheduleBestSolution = generationBestSolution;
                    sigma = sigma * Math.pow(Math.exp(1 - (double) (1/5)), 0.05);
                } else {
                    sigma = sigma * Math.pow(Math.exp(0 - (double) (1/5)), 0.05);
                }
            } catch (Exception e) { }
        }

        return scheduleBestSolution;
    }

    /**
     * Selection of the parents. Two random individuals will be taken from the population
     * @param population The generation population
     * @return A list of two parents
     */
    private List<ScheduleRepresentation> selectParents(List<ScheduleRepresentation> population) {
        Collections.shuffle(population);
        List<ScheduleRepresentation> newList = new ArrayList<>();
        Collections.addAll(newList, population.get(0), population.get(1));
        return newList;
    }

    /**
     * Two-Point Crossover-Operator.
     * @param project Project of concern
     * @param schedules A list of two individuals which needs to be crossovered
     * @return A newborn individual with ongoing mutation
     */
    private ScheduleRepresentation crossover(Project project, List<ScheduleRepresentation> schedules) {
        List<ActivityMode> mother = schedules.get(0).toActivityModeList(project);
        List<ActivityMode> father = schedules.get(1).toActivityModeList(project);

        int q1 = new Random().nextInt(project.getActivities().size() - 1);
        int q2 = q1;
        while (q2 <= q1)
            q2 = new Random().nextInt(project.getActivities().size());

        List<ActivityMode> daughter = new ArrayList<>();

        for (int i = 0; i < q1; i++) {
            daughter.add(mother.get(i));
        }

        int k = 0;
        for (int i = q1; i < q2; i++) {
            while (daughter.stream()
                    .map(ActivityMode::getActivity).collect(Collectors.toList())
                    .contains(father.get(k).getActivity())) {
                k++;
            }

            daughter.add(father.get(k));
        }

        k = 0;
        for (int i = q2; i < project.getActivities().size(); i++) {
            while (daughter.stream()
                    .map(ActivityMode::getActivity).collect(Collectors.toList())
                    .contains(mother.get(k).getActivity())) {
                k++;
            }

            daughter.add(mother.get(k));
        }

        return new ActivityListRepresentation(daughter);
    }

    /**
     * (Swapping) Mutation Operator with usage of the dynamic mutation rate sigma.
     * @param project Project of concern
     * @param offspring The newborn offspring
     * @return A "actual" newborn with a mutation
     */
    private ScheduleRepresentation mutation(Project project, ScheduleRepresentation offspring) {
        List<ActivityMode> jobList = offspring.toActivityModeList(project);
        List<List<ActivityMode>> swappableJobModes = new ArrayList<>();

        Set<Activity> handledActivities = new HashSet<>();
        handledActivities.add(jobList.get(0).getActivity());

        for (int i = 1; i < jobList.size(); i++) {
            Activity previousActivity = jobList.get(i - 1).getActivity();
            Activity currentActivity = jobList.get(i).getActivity();

            Set<Activity> requiredActivities = ProjectHelper.getPredecessorsOfJob(project, currentActivity);
            if (handledActivities.containsAll(requiredActivities) && !requiredActivities.contains(previousActivity)) { // Can be swapped
                List<ActivityMode> swappable = new ArrayList();
                swappable.add(jobList.get(i));
                swappable.add(jobList.get(i - 1));

                swappableJobModes.add(swappable);
            }
            handledActivities.add(currentActivity);
        }

        // Swap one JobModes with each other
        while (!swappableJobModes.isEmpty()) {
            List<ActivityMode> swappingActivityMode = swappableJobModes.get(0);
            int firstIndex = jobList.indexOf(swappingActivityMode.get(0));
            int secondIndex = jobList.indexOf(swappingActivityMode.get(1));

            if (Math.random() <= sigma) {
                Collections.swap(jobList, firstIndex, secondIndex);
            }

            removeFromSwappableList(swappingActivityMode, swappableJobModes);
        }

        int[] jobs = new int[jobList.size()];
        int[] modes = new int[jobList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = jobList.get(i).getActivity().getActivityId();
            modes[i] = jobList.get(i).getMode().getModeId();
        }

        // Swap one random mode
        for (int i = 0; i < modes.length; i++) {
            Activity activity = jobList.get(i).getActivity();
            int size = activity.getModes().size();

            if (size != 1 && Math.random() <= sigma) {
                int finalI = i;
                List<Mode> selectedMode = activity.getModes().stream().dropWhile(mode -> mode.getModeId() == modes[finalI]).collect(Collectors.toList());
                Collections.shuffle(selectedMode);
                modes[i] = selectedMode.get(0).getModeId();
            }
        }

        return new ActivityListRepresentation(jobs, modes);
    }

    /**
     * Fitness function of the GA. Makespan - Robustness / 100
     * @param benchmark Benchmark of concern
     * @param age Age of the individual
     * @param scheduleRepresentation Representation of the individual
     * @param optimumFunction The actual implementation of the objective function
     * @return A solution with the fitness value
     */
    private Solution fitness(Benchmark benchmark, int age, ScheduleRepresentation scheduleRepresentation, ObjectiveFunction optimumFunction) {
        // makespan + robustness (robustness / makespan)
        double fitness = benchmark.getHorizon();
        try {
            Schedule schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
            fitness = optimumFunction.fitness(schedule);
        } catch (Exception ex) { }

        return new Solution(age, scheduleRepresentation, fitness);
    }

    /**
     * Selection-Operator of the GA. Selects an fixed amount of individuals according the
     * fitness and the age.
     * @param population The current population
     * @param amount Amount of individuals that should be selected acc. to the fitness
     * @param lifespan The maximum lifespan of an individual
     * @return The new population for the upcoming generation
     */
    private List<Solution> select(List<Solution> population, int amount, int lifespan) {
        return population.stream()
                .peek(solution -> solution.setGeneration(solution.getGeneration() + 1))
                .filter(solution -> lifespan == 0 || solution.getGeneration() <= lifespan)
                .sorted(Comparator.comparingDouble(Solution::getFitness))
                .limit(amount)
                .collect(Collectors.toList());
    }

    /**
     * Generates an initial population from a bunch of heuristics.
     * @param benchmark Benchmark of concern
     * @param amount The amount of individuals inside a population
     * @param optimumFunction The used objective function
     * @return The initial population
     */
    private List<Solution> initialPopulation(Benchmark benchmark, int amount, ObjectiveFunction optimumFunction) {
        List<Solution> population = new ArrayList<>();

        // Heuristics: Single Sampling
        int iterations = 0;
        while (population.size() < amount) {
            for (Class<?> availableActivityHeuristic : ActivityHeuristic.availableActivityHeuristics) {
                for (Class<?> availableModeHeuristic : ModeHeuristic.availableModeHeuristics) {
                    try {
                        ScheduleRepresentation scheduleRepresentation;
                        double ratio = population.size() / (double) ++iterations;
                        if (iterations > 20 && ratio < 0.05) {
                            scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                                    benchmark,
                                    Heuristic.builder()
                                            .modeHeuristic(LRSHeuristic.class)
                                            .activityHeuristic(RandomActivityHeuristic.class)
                                            .build(),
                                    Math.random() < 0.2 ? HeuristicSampling.SINGLE : HeuristicSampling.REGRET_BASED_BIAS);
                        } else {
                            scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                                    benchmark,
                                    Heuristic.builder()
                                            .modeHeuristic((Class<? extends ModeHeuristic>) availableModeHeuristic)
                                            .activityHeuristic((Class<? extends ActivityHeuristic>) availableActivityHeuristic)
                                            .build(),
                                    Math.random() < 0.66 ? HeuristicSampling.SINGLE : HeuristicSampling.REGRET_BASED_BIAS);
                        }

                        Schedule schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
                        if (schedule != null)
                            population.add(this.fitness(benchmark, 1, schedule.getScheduleRepresentation(), optimumFunction));
                    } catch (Exception ex) { }
                }
            }
        }

        Collections.shuffle(population);
        return population.stream().limit(amount).collect(Collectors.toList());
    }

    /**
     * Help function that is necessary of the iterative process of the mutation step.
     * @param removingItems The items that should be removed from a swappable list of job-modes tuples
     * @param swappableJobModes Feasible swappable list of job-modes tuples
     */
    private void removeFromSwappableList(List<ActivityMode> removingItems, List<List<ActivityMode>> swappableJobModes) {
        Set<List<ActivityMode>> removingIndices = new HashSet<>();
        for (ActivityMode fixedActivityMode : removingItems) {
            Activity fixedActivity = fixedActivityMode.getActivity();

            for (List<ActivityMode> swappableActivityModeList : swappableJobModes) {
                for (ActivityMode swappableActivityMode : swappableActivityModeList) {
                    if (swappableActivityMode.getActivity().equals(fixedActivity))
                        removingIndices.add(swappableActivityModeList);
                }
            }
        }

        if (!removingIndices.isEmpty())
            swappableJobModes.removeAll(removingIndices);
    }
}
