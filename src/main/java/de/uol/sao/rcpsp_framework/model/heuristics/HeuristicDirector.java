package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.ModeHeuristic;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;

import java.lang.reflect.InvocationTargetException;
import java.util.*;

public class HeuristicDirector {

    private static Map<Job, Double> computePriorityValueForJobs(ActivityHeuristic activityHeuristic, List<Job> jobs, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Job, Double> jobWithPriorityValue = new HashMap<>();
        jobs.forEach(job ->
            jobWithPriorityValue.put(job, activityHeuristic.determineActivityPriorityValue(job, scheduledJobs, scheduledModes, benchmark))
        );
        return jobWithPriorityValue;
    }

    private static Map<Mode, Double> computeModePriorityValues(ModeHeuristic modeHeuristic, Job selectedJob, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Benchmark benchmark) {
        Map<Mode, Double> jobWithPriorityValue = new HashMap<>();

        // Remove already scheduled reservation and compute the amount of non-renewable resources reservation acc. to the reservation map
        scheduledJobs.forEach(reservation::remove);
        Map<Resource, Integer> reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);

        // Compute the non-renewable resources left and reservation. Required for several mode selection heuristics
        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                nonRenewableResourcesLeft.put(resource, amount);
            }
        });

        // Calculate
        for (Mode scheduledMode : scheduledModes) {
            scheduledMode.getRequestedResources().forEach((scheduledModeResource, scheduledModeAmount) -> {
                Integer resourceLeftAmount = nonRenewableResourcesLeft.get(scheduledModeResource);
                if (resourceLeftAmount != null) {
                    nonRenewableResourcesLeft.put(scheduledModeResource, resourceLeftAmount - scheduledModeAmount);
                }
            });
        }

        selectedJob.getModes().forEach(mode ->
            jobWithPriorityValue.put(mode, modeHeuristic.determineModePriorityValue(selectedJob, mode, scheduledJobs, scheduledModes, reservation, reservedResources, nonRenewableResourcesLeft, benchmark))
        );
        return jobWithPriorityValue;
    }

    private static  <T> T samplingMinMax(Map<T, Double> objectWithPriorityValue, HeuristicSelection selection) {
        T selected = null;
        Double selectedPriorityValue = 0.0;

        // Select the activity acc. to heuristic selection
        for (Map.Entry<T, Double> entry : objectWithPriorityValue.entrySet()) {
            T job = entry.getKey();
            Double priorityValue = entry.getValue();

            if (selected == null || (selection == HeuristicSelection.MIN ? selectedPriorityValue > priorityValue : selectedPriorityValue < priorityValue)) {
                selected = job;
                selectedPriorityValue = priorityValue;
            }
        }

        return selected;
    }

    public static ScheduleRepresentation constructScheduleRepresentation(Benchmark benchmark, Heuristic heuristic) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        ActivityHeuristic activityHeuristic = heuristic.getActivityHeuristic().getDeclaredConstructor().newInstance();
        ModeHeuristic modeHeuristic = heuristic.getModeHeuristic().getDeclaredConstructor().newInstance();

        List<Job> activityScheduled = new ArrayList<>();
        List<Mode> modesScheduled = new ArrayList<>();
        Map<Job, List<Mode>> reservation = ProjectHelper.getReservationOfNonRenewableResources(benchmark.getProject());

        List<Job> possibleJobs = new ArrayList<>();
        possibleJobs.add(benchmark.getProject().getJobs().get(0));

        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                nonRenewableResourcesLeft.put(resource, amount);
            }
        });

        // First schedule the activities
        while (!possibleJobs.isEmpty()) {
            // Compute all possible activities acc. to the heuristic alg
            Map<Job, Double> activityPriorityValues = HeuristicDirector.computePriorityValueForJobs(activityHeuristic, possibleJobs, activityScheduled, modesScheduled, benchmark);
            Job selectedJob = HeuristicDirector.samplingMinMax(activityPriorityValues, activityHeuristic.getHeuristicSelection());

            // Compute all possible modes acc. to the heuristic alg
            Map<Mode, Double> modesPriorityValues = HeuristicDirector.computeModePriorityValues(modeHeuristic, selectedJob, activityScheduled, modesScheduled, reservation, benchmark);
            Mode selectedMode = HeuristicDirector.samplingMinMax(modesPriorityValues, modeHeuristic.getHeuristicSelection());

            activityScheduled.add(selectedJob);
            modesScheduled.add(selectedMode);

            // Remove from list and add the possible successors
            possibleJobs.remove(selectedJob);

            selectedJob.getSuccessor().forEach(successorJob -> {
                Set<Job> successorsPredecessors = ProjectHelper.getPredecessorsOfJob(benchmark.getProject(), successorJob);
                // Check if all are already scheduled if yes, add them to possible succesors
                boolean possible = true;
                for (Job successorsPredecessor : successorsPredecessors) {
                    if (!activityScheduled.contains(successorsPredecessor))
                        possible = false;
                }

                if (possible && !activityScheduled.contains(successorJob))
                    possibleJobs.add(successorJob);
            });
        }

        return new ActivityListSchemeRepresentation(
            activityScheduled.stream().mapToInt(Job::getJobId).toArray(),
            modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }
}
