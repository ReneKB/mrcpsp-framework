package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.Heuristic;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicDirector;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSampling;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.heuristic.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.heuristic.modes.ModeHeuristic;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.representation.JobMode;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import lombok.SneakyThrows;

import java.util.*;
import java.util.stream.Collectors;

public class SolverHelper {

    public static void flipNeighbourModes(List<Job> initialJobList, int[] neighbourModes) {
        if (initialJobList.isEmpty())
            return;

        int gap = neighbourModes.length - initialJobList.size();

        Mode newSelectedMode = null;
        int newSelectedModeIndex = 0;

        int completeModesAmount = initialJobList.stream().map(Job::getModes).map(modes -> modes.size()).reduce(Integer::sum).get();
        boolean singleMode = completeModesAmount == initialJobList.size();

        while (newSelectedMode == null && !singleMode) {
            int randomIndex = new Random().nextInt(initialJobList.size());
            int currentMode = neighbourModes[randomIndex + gap];

            Job job = initialJobList.get(randomIndex);
            int size = job.getModes().size();
            if (size != 1) {
                List<Mode> selectedMode = job.getModes().stream().dropWhile(mode -> mode.getModeId() == currentMode).collect(Collectors.toList());
                Collections.shuffle(selectedMode);
                newSelectedMode = selectedMode.get(0);
                newSelectedModeIndex = randomIndex;
            }
        }

        if (!singleMode)
            neighbourModes[newSelectedModeIndex + gap] = newSelectedMode.getModeId();
    }


    @SneakyThrows
    public static List<ScheduleRepresentation> getNeighbourhood(Benchmark benchmark, ScheduleRepresentation scheduleRepresentation, List<JobMode> fixedJobMode) {
        List<JobMode> jobModes = scheduleRepresentation.toJobMode(benchmark.getProject());
        List<ScheduleRepresentation> neighbourhood = new ArrayList<>();

        List<Job> jobList = jobModes.stream().map(JobMode::getJob).collect(Collectors.toList());
        List<Mode> modeList = jobModes.stream().map(JobMode::getMode).collect(Collectors.toList());

        List<Job> changeableModes = fixedJobMode != null ? jobList.stream()
                .filter(job -> !fixedJobMode.stream().map(JobMode::getJob).collect(Collectors.toList()).contains(job))
                .collect(Collectors.toList()) : new ArrayList<>(jobList);

        int[] jobs = new int[jobList.size()];
        int[] modes = new int[modeList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = jobList.get(i).getJobId();
            modes[i] = modeList.get(i).getModeId();
        }

        Set<Job> handledJobs = new HashSet<>();
        if (fixedJobMode != null) {
            handledJobs.addAll(fixedJobMode.stream().map(JobMode::getJob).collect(Collectors.toSet()));
        } else
            handledJobs.add(jobList.get(0));

        // Adds for the same activity list mode neighbours
        for (int i = 0; i < 2; i++) {
            int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
            int[] neighbourModes = Arrays.copyOf(modes, modes.length);

            SolverHelper.flipNeighbourModes(changeableModes, neighbourModes);
            neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));
        }

        for (int i = fixedJobMode != null ? fixedJobMode.size() + 1 : 1; i < jobList.size(); i++) {
            Job previousJob = jobList.get(i - 1);
            Job currentJob = jobList.get(i);

            Set<Job> requiredJobs = ProjectHelper.getPredecessorsOfJob(benchmark.getProject(), currentJob);
            if (handledJobs.containsAll(requiredJobs) && !requiredJobs.contains(previousJob)) { // Can be swapped
                int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
                int[] neighbourModes = Arrays.copyOf(modes, modes.length);

                int tmp = neighbourJobs[i-1];
                neighbourJobs[i-1] = neighbourJobs[i];
                neighbourJobs[i] = tmp;

                tmp = neighbourModes[i-1];
                neighbourModes[i-1] = neighbourModes[i];
                neighbourModes[i] = tmp;

                SolverHelper.flipNeighbourModes(changeableModes, neighbourModes);
                neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));

                SolverHelper.flipNeighbourModes(changeableModes, neighbourModes);
                neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));
            }
            handledJobs.add(currentJob);
        }

        return neighbourhood;
    }

    public static Schedule createInitialSolution(SchedulerService schedulerService, Benchmark benchmark, List<JobMode> alreadyScheduled) throws GiveUpException {
        // must be a feasible solution
        Schedule schedule = null;

        int giveUpCounter = 0;
        while (schedule == null) {
            if (giveUpCounter > 50)
                throw new GiveUpException();

            for (Class<?> availableActivityHeuristic : ActivityHeuristic.availableActivityHeuristics) {
                if (schedule != null)
                    break;
                for (Class<?> availableModeHeuristic : ModeHeuristic.availableModeHeuristics) {
                    if (schedule != null)
                        break;

                    try {
                        ScheduleRepresentation scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                                benchmark,
                                Heuristic.builder()
                                        .modeHeuristic((Class<? extends ModeHeuristic>) availableModeHeuristic)
                                        .activityHeuristic((Class<? extends ActivityHeuristic>) availableActivityHeuristic)
                                        .build(),
                                Math.random() < 0.66 ? HeuristicSampling.SINGLE : HeuristicSampling.REGRET_BASED_BIAS,
                                alreadyScheduled);

                        schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
                    } catch (Exception ex) {
                    }
                }
            }

            giveUpCounter++;
        }

        return schedule;
    }

    public static double calculateFitness(Schedule schedule, Metric<?> robustnessFunction) {
        int makespan = schedule.computeMetric(Metrics.MAKESPAN);
        double robustness = robustnessFunction != null ? Double.parseDouble(schedule.computeMetric(robustnessFunction).toString()) *
                (robustnessFunction.getOptimum() == HeuristicSelection.MAX ? 1 : -1) : 0;
        return makespan - robustness / 100;
    }
}
