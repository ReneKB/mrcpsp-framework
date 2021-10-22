package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRepresentation;

import java.util.*;

public abstract class Heuristic {

    abstract int determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark);
    abstract int determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark);

    Map<Job, Integer> computePriorityValueForJobs(List<Job> jobs, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Job, Integer> jobWithPriorityValue = new HashMap<>();
        jobs.forEach(job ->
            jobWithPriorityValue.put(job, determineActivityPriorityValue(job, scheduledJobs, scheduledModes, benchmark))
        );
        return jobWithPriorityValue;
    }

    Map<Mode, Integer> computeModePriorityValues(Job selectedJob, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Benchmark benchmark) {
        Map<Mode, Integer> jobWithPriorityValue = new HashMap<>();

        // Remove already scheduled reservation and compute the amount of non-renewable resources reservation acc. to the reservation map
        scheduledJobs.forEach(reservation::remove);
        Map<Resource, Integer> reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);

        // Compute the renewable resources left and reservation. Required for several mode selection heuristics
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
            jobWithPriorityValue.put(mode, determineModePriorityValue(selectedJob, mode, scheduledJobs, scheduledModes, reservedResources, nonRenewableResourcesLeft, benchmark))
        );
        return jobWithPriorityValue;
    }

    public ScheduleRepresentation buildScheduleRepresentation(Benchmark benchmark) throws NoNonRenewableResourcesLeftException {
        return this.buildScheduleRepresentation(benchmark, HeuristicSelection.MIN, HeuristicSelection.MIN);
    }

    public ScheduleRepresentation buildScheduleRepresentation(Benchmark benchmark, HeuristicSelection heuristicSelectionActivity, HeuristicSelection heuristicSelectionMode) {
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
            Map<Job, Integer> activityPriorityValues = this.computePriorityValueForJobs(possibleJobs, activityScheduled, modesScheduled, benchmark);
            Job selectedJob = null;
            int selectedJobPriorityValue = 0;

            // Select the activity acc. to heuristic selection
            for (Map.Entry<Job, Integer> entry : activityPriorityValues.entrySet()) {
                Job job = entry.getKey();
                Integer priorityValue = entry.getValue();

                if (selectedJob == null || (heuristicSelectionActivity == HeuristicSelection.MIN ?
                        selectedJobPriorityValue > priorityValue : selectedJobPriorityValue < priorityValue)) {
                    selectedJob = job;
                    selectedJobPriorityValue = priorityValue;
                }
            }

            // Add to representation
            activityScheduled.add(selectedJob);
            Map<Mode, Integer> modesPriorityValues = this.computeModePriorityValues(selectedJob, activityScheduled, modesScheduled, reservation, benchmark);

            // Compute all possible modes acc. to the heuristic alg
            Mode selectedMode = null;
            int selectedModePriorityValue = 0;

            // Select the activity acc. to heuristic selection
            for (Map.Entry<Mode, Integer> entry : modesPriorityValues.entrySet()) {
                Mode mode = entry.getKey();
                Integer priorityValue = entry.getValue();

                if (selectedMode == null || (heuristicSelectionMode == HeuristicSelection.MIN ?
                        selectedModePriorityValue > priorityValue : selectedModePriorityValue < priorityValue)) {
                    selectedMode = mode;
                    selectedModePriorityValue = priorityValue;
                }
            }

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

        // Second schedule the modes
        /*
        Map<Job, List<Mode>> reservation = ProjectHelper.getReservationOfNonRenewableResources(benchmark.getProject());
        Map<Resource, Integer> reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);

        for (Job selectedJob : activityScheduled) {
            List<Mode> possibleModes = new ArrayList<>(selectedJob.getModes());
            Map<Resource, Integer> finalReservedResources = reservedResources;

            possibleModes = possibleModes.stream()
                    .filter(possibleMode -> {
                        AtomicBoolean resourcesAvailable = new AtomicBoolean(true);
                        possibleMode.getRequestedResources().forEach((possibleRequestedResource, possibleRequestedAmount) -> {
                            if (possibleRequestedResource instanceof NonRenewableResource) {
                                // decreases the left amount with the reserved ones (if reserved)
                                int reservedResourcesAmount = finalReservedResources.getOrDefault(possibleRequestedResource, 0);
                                if (reservation.containsKey(selectedJob))
                                    reservedResourcesAmount = 0;

                                if (possibleRequestedAmount > nonRenewableResourcesLeft.get(possibleRequestedResource) - reservedResourcesAmount)
                                    resourcesAvailable.set(false);
                            } else if (possibleRequestedResource instanceof RenewableResource) {
                                if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                                    resourcesAvailable.set(false);
                            }
                        });
                        return resourcesAvailable.get();
                    })
                    .collect(Collectors.toList());

            // Select Mode (try to take the ones with the lowest)
            Collections.shuffle(possibleModes);
            if (possibleModes.isEmpty()) {
                throw new NoNonRenewableResourcesLeftException(selectedJob, nonRenewableResourcesLeft);
            }

            // Random select if requested amount is lower than reserved
            Mode selectedMode = possibleModes.get(0);

            selectedMode.getRequestedResources().forEach((scheduledModeResource, scheduledModeAmount) -> {
                Integer resourceLeftAmount = nonRenewableResourcesLeft.get(scheduledModeResource);
                if (resourceLeftAmount != null) {
                    nonRenewableResourcesLeft.put(scheduledModeResource, resourceLeftAmount - scheduledModeAmount);
                }
            });

            modesScheduled.add(selectedMode);

            reservation.remove(selectedJob);
            reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);
        }
         */

        return new ActivityListSchemeRepresentation(
            activityScheduled.stream().mapToInt(Job::getJobId).toArray(),
            modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }
}
