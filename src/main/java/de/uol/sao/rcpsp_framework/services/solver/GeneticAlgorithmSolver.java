package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.ModeHeuristic;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
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
    double sigma = 0.06;

    @Data
    @AllArgsConstructor
    class Solution {
        int generation;
        ScheduleRepresentation scheduleRepresentation;
        double fitness;
    }

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, Metric<?> robustnessFunction, List<JobMode> fixedJobModeList) {
        List<Solution> population = this.initialPopulation(benchmark, mu, robustnessFunction, fixedJobModeList);
        Schedule scheduleBestSolution = null;

        int i = 0;
        while (i < iterations) {
            for (int offspring = 0; offspring < lambda; offspring++) {
                List<ScheduleRepresentation> parents = this.selectParents(population.stream().map(Solution::getScheduleRepresentation).collect(Collectors.toList()));
                ScheduleRepresentation crossovered = this.crossover(benchmark.getProject(), parents);
                ScheduleRepresentation mutation = this.mutation(benchmark.getProject(), crossovered, fixedJobModeList);
                Solution solution = this.fitness(benchmark, 0, mutation, robustnessFunction);

                population.add(solution);
            }

            List<Solution> newPopulation = this.select(population, mu, 50);
            if (newPopulation.size() > 2)
                population = newPopulation;

            i += lambda;

            try {
                Schedule generationBestSolution = schedulerService.createScheduleProactive(benchmark,
                        population.stream().sorted(Comparator.comparingDouble(Solution::getFitness)).findFirst().get().getScheduleRepresentation(),
                        null);

                if (ScheduleHelper.compareSchedule(generationBestSolution, scheduleBestSolution, robustnessFunction)) {
                    scheduleBestSolution = generationBestSolution;
                    sigma = sigma * Math.pow(Math.exp(1 - (double) (1/5)), 0.05);
                } else {
                    sigma = sigma * Math.pow(Math.exp(0 - (double) (1/5)), 0.05);
                }
            } catch (Exception e) { }
        }

        return scheduleBestSolution;
    }

    private List<ScheduleRepresentation> selectParents(List<ScheduleRepresentation> population) {
        Collections.shuffle(population);
        List<ScheduleRepresentation> newList = new ArrayList<>();
        Collections.addAll(newList, population.get(0), population.get(1));
        return newList;
    }

    /**
     * Two-Point Crossover (acc. to Hartmann, p. 4 f.)
     * @param schedules
     * @return
     */
    private ScheduleRepresentation crossover(Project project, List<ScheduleRepresentation> schedules) {
        List<JobMode> mother  = schedules.get(0).toJobMode(project);
        List<JobMode> father  = schedules.get(1).toJobMode(project);

        int q1 = new Random().nextInt(project.getJobs().size() - 1);
        int q2 = q1;
        while (q2 <= q1)
            q2 = new Random().nextInt(project.getJobs().size());

        List<JobMode> daughter = new ArrayList<>();

        for (int i = 0; i < q1; i++) {
            daughter.add(mother.get(i));
        }

        int k = 0;
        for (int i = q1; i < q2; i++) {
            while (daughter.stream()
                    .map(JobMode::getJob).collect(Collectors.toList())
                    .contains(father.get(k).getJob())) {
                k++;
            }

            daughter.add(father.get(k));
        }

        k = 0;
        for (int i = q2; i < project.getJobs().size(); i++) {
            while (daughter.stream()
                    .map(JobMode::getJob).collect(Collectors.toList())
                    .contains(mother.get(k).getJob())) {
                k++;
            }

            daughter.add(mother.get(k));
        }

        return new ActivityListSchemeRepresentation(daughter);
    }

    private ScheduleRepresentation mutation(Project project, ScheduleRepresentation offspring, List<JobMode> fixedJobModeList) {
        List<JobMode> jobList = offspring.toJobMode(project);
        List<List<JobMode>> swappableJobModes = new ArrayList<>();

        Set<Job> handledJobs = new HashSet<>();
        handledJobs.add(jobList.get(0).getJob());

        for (int i = 1; i < jobList.size(); i++) {
            Job previousJob = jobList.get(i - 1).getJob();
            Job currentJob = jobList.get(i).getJob();

            Set<Job> requiredJobs = ProjectHelper.getPredecessorsOfJob(project, currentJob);
            if (handledJobs.containsAll(requiredJobs) && !requiredJobs.contains(previousJob)) { // Can be swapped
                List<JobMode> swappable = new ArrayList();
                swappable.add(jobList.get(i));
                swappable.add(jobList.get(i - 1));

                swappableJobModes.add(swappable);
            }
            handledJobs.add(currentJob);
        }

        // For reactive solutions: Don't swap already planned jobmodes
        if (fixedJobModeList != null) {
            Set<List<JobMode>> removingIndices = new HashSet<>();
            for (JobMode fixedJobMode : fixedJobModeList) {
                Job fixedJob = fixedJobMode.getJob();

                for (List<JobMode> swappableJobModeList : swappableJobModes) {
                    for (JobMode swappableJobMode : swappableJobModeList) {
                        if (swappableJobMode.getJob().equals(fixedJob))
                            removingIndices.add(swappableJobModeList);
                    }
                }
            }

            if (!removingIndices.isEmpty())
                swappableJobModes.removeAll(removingIndices);
        }

        // Swap one JobModes with each other
        if (!swappableJobModes.isEmpty()) {
            Collections.shuffle(swappableJobModes);
            List<JobMode> swappingJobMode = swappableJobModes.get(0);
            int firstIndex = jobList.indexOf(swappingJobMode.get(0));
            int secondIndex = jobList.indexOf(swappingJobMode.get(1));

            Collections.swap(jobList, firstIndex, secondIndex);
        }

        int[] jobs = new int[jobList.size()];
        int[] modes = new int[jobList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = jobList.get(i).getJob().getJobId();
            modes[i] = jobList.get(i).getMode().getModeId();
        }

        // Swap one random mode
        for (int i = 0; i < modes.length; i++) {
            Job job = jobList.get(i).getJob();
            int size = job.getModes().size();

            boolean isAlreadyScheduled = false;
            if (fixedJobModeList != null) {
                for (JobMode jobMode : fixedJobModeList) {
                    if (job.equals(jobMode.getJob())) {
                        isAlreadyScheduled = true;
                        break;
                    }
                }
            }

            if (!isAlreadyScheduled && size != 1 && Math.random() <= sigma) {
                int finalI = i;
                List<Mode> selectedMode = job.getModes().stream().dropWhile(mode -> mode.getModeId() == modes[finalI]).collect(Collectors.toList());
                Collections.shuffle(selectedMode);
                modes[i] = selectedMode.get(0).getModeId();
            }
        }

        return new ActivityListSchemeRepresentation(jobs, modes);
    }

    private Solution fitness(Benchmark benchmark, int generation, ScheduleRepresentation scheduleRepresentation, Metric<?> robustnessFunction) {
        // makespan + robustness (robustness / makespan)
        double fitness = benchmark.getHorizon();
        try {
            Schedule schedule = schedulerService.createScheduleProactive(benchmark, scheduleRepresentation, null);
            int makespan = schedule.computeMetric(Metrics.MAKESPAN);
            double robustness = robustnessFunction != null ? Double.parseDouble(schedule.computeMetric(robustnessFunction).toString()) *
                    (robustnessFunction.getOptimum() == HeuristicSelection.MAX ? 1 : -1) : 0;
            fitness = makespan - robustness / 100;
        } catch (Exception ex) { }

        return new Solution(generation, scheduleRepresentation, fitness);
    }

    private List<Solution> select(List<Solution> population, int amount, int lifespan) {
        return population.stream()
                .peek(solution -> solution.setGeneration(solution.getGeneration() + 1))
                .filter(solution -> lifespan == 0 || solution.getGeneration() <= lifespan)
                .sorted(Comparator.comparingDouble(Solution::getFitness))
                .limit(amount)
                .collect(Collectors.toList());
    }

    private List<Solution> initialPopulation(Benchmark benchmark, int amount, Metric<?> robustnessMeasurement, List<JobMode> alreadyScheduled) {
        List<Solution> population = new ArrayList<>();

        // Heuristics: Single Sampling
        while (population.size() < amount) {
            for (Class<?> availableActivityHeuristic : ActivityHeuristic.availableActivityHeuristics) {
                for (Class<?> availableModeHeuristic : ModeHeuristic.availableModeHeuristics) {
                    try {
                        ScheduleRepresentation scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                                benchmark,
                                Heuristic.builder()
                                        .modeHeuristic((Class<? extends ModeHeuristic>) availableModeHeuristic)
                                        .activityHeuristic((Class<? extends ActivityHeuristic>) availableActivityHeuristic)
                                        .build(),
                                Math.random() < 0.66 ? HeuristicSampling.SINGLE : HeuristicSampling.REGRET_BASED_BIAS,
                                alreadyScheduled);

                        Schedule schedule = schedulerService.createScheduleProactive(benchmark, scheduleRepresentation, null);
                        if (schedule != null)
                            population.add(this.fitness(benchmark, 1, schedule.getScheduleRepresentation(), robustnessMeasurement));
                    } catch (Exception ex) { }
                }
            }
        }

        Collections.shuffle(population);
        return population.stream().limit(amount).collect(Collectors.toList());
    }
}
