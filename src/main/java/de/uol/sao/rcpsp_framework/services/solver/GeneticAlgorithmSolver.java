package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.SolverHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.LFTHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.MSLKHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.LRSHeuristic;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
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

    int mu = 50;
    int lambda = 50;

    @Data
    @AllArgsConstructor
    class Solution {
        ScheduleRepresentation scheduleRepresentation;
        double fitness;
    }

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, UncertaintyModel uncertaintyModel) {
        int populationSize = 50;
        List<Solution> population = this.initialPopulation(benchmark, populationSize, uncertaintyModel);

        int i = 0;
        while (i < iterations) {
            for (int offspring = 0; offspring < lambda; offspring++) {
                List<ScheduleRepresentation> parents = this.selectParents(population.stream().map(Solution::getScheduleRepresentation).collect(Collectors.toList()));
                ScheduleRepresentation crossovered = this.crossover(benchmark.getProject(), parents);
                ScheduleRepresentation mutation = this.mutation(benchmark.getProject(), crossovered);
                Solution solution = fitness(benchmark, mutation);

                population.add(solution);
            }

            population = this.select(population, mu);
            i += lambda;
        }

        Solution bestSolution = population.isEmpty() ? null : population.stream().sorted((o1, o2) -> (int) (o1.getFitness() - o2.getFitness())).findFirst().get();

        Schedule scheduleBestSolution = null;
        try {
            scheduleBestSolution = schedulerService.createScheduleProactive(benchmark,
                    bestSolution.getScheduleRepresentation(),
                    null);
        } catch (Exception ex) { }

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

    private ScheduleRepresentation mutation(Project project, ScheduleRepresentation offspring) {
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
        for (int i = 0; i < 1; i++) {
            SolverHelper.flipNeighbourModes(jobList.stream().map(JobMode::getJob).collect(Collectors.toList()), modes);
        }

        return new ActivityListSchemeRepresentation(jobs, modes);
    }

    private Solution fitness(Benchmark benchmark, ScheduleRepresentation scheduleRepresentation) {
        // makespan + robustness (robustness / makespan)
        double fitness = benchmark.getHorizon();
        try {
            Schedule schedule = schedulerService.createScheduleProactive(benchmark, scheduleRepresentation, null);
            fitness = schedule.computeMetric(Metrics.MAKESPAN);
        } catch (Exception ex) { }

        return new Solution(scheduleRepresentation, fitness);
    }

    private List<Solution> select(List<Solution> population, int amount) {
        return population.stream().sorted((o1, o2) -> (int) (o1.getFitness() - o2.getFitness())).limit(amount).collect(Collectors.toList());
    }

    private List<Solution> initialPopulation(Benchmark benchmark, int amount, UncertaintyModel uncertaintyModel) {
        List<Solution> population = new ArrayList<>();
        for (int i = 0; i < amount; i++) {
            Schedule schedule = null;
            while (schedule == null) {
                try {
                    ScheduleRepresentation scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                            benchmark,
                            Heuristic.builder()
                                    .activityHeuristic(MSLKHeuristic.class)
                                    .modeHeuristic(LRSHeuristic.class).build(),
                            HeuristicSampling.REGRET_BASED_BIAS
                    );

                    schedule = schedulerService.createScheduleProactive(benchmark, scheduleRepresentation, null);
                } catch (Exception ex) { }
            }

            population.add(this.fitness(benchmark, schedule.getScheduleRepresentation()));
        }
        return population;
    }
}
