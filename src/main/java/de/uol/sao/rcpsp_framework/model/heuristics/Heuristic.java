package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.Interval;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRepresentation;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.*;

public abstract class Heuristic {

    @Data
    @AllArgsConstructor
    class RegretBiasInterval {
        double min;
        double max;
    }

    abstract double determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark);
    abstract double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark);

    Map<Job, Double> computePriorityValueForJobs(List<Job> jobs, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Job, Double> jobWithPriorityValue = new HashMap<>();
        jobs.forEach(job ->
            jobWithPriorityValue.put(job, determineActivityPriorityValue(job, scheduledJobs, scheduledModes, benchmark))
        );
        return jobWithPriorityValue;
    }

    Map<Mode, Double> computeModePriorityValues(Job selectedJob, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Benchmark benchmark) {
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
            jobWithPriorityValue.put(mode, determineModePriorityValue(selectedJob, mode, scheduledJobs, scheduledModes, reservation, reservedResources, nonRenewableResourcesLeft, benchmark))
        );
        return jobWithPriorityValue;
    }

    public ScheduleRepresentation buildScheduleRepresentation(Benchmark benchmark) throws NoNonRenewableResourcesLeftException {
        return this.buildScheduleRepresentation(benchmark, HeuristicSelection.MIN, HeuristicSelection.MIN);
    }

    private <T> T samplingMinMax(Map<T, Double> objectWithPriorityValue, HeuristicSelection selection) {
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

    /*
    private <T> T samplingMinMaxRegretBias(Map<T, Double> objectWithPriorityValue, HeuristicSelection selection) {
        Map<T, Double> objectWithProbability = new HashMap<>();
        Double sumOfAllPriorityValues = objectWithPriorityValue.values().stream().reduce(Double::sum).get();

        // if null than equally selection
        if (sumOfAllPriorityValues == 0 || sumOfAllPriorityValues.isInfinite()) {
             List<T> objects = new ArrayList<>(objectWithPriorityValue.keySet());
             Collections.shuffle(objects);
             return objects.get(0);
        } else { // else regret biased
            for (Map.Entry<T, Double> entry : objectWithPriorityValue.entrySet()) {
                T t = entry.getKey();
                Double aDouble = entry.getValue();
                objectWithProbability.put(t, aDouble / sumOfAllPriorityValues);
            }
        }

        if (selection == HeuristicSelection.MIN) {
            for (T t : objectWithProbability.keySet()) {
                Double prob = objectWithProbability.get(t);
                double invertProb = 1 - prob;
                if (invertProb == 0)
                    return t;

                objectWithProbability.put(t, invertProb);
            }

            sumOfAllPriorityValues = objectWithProbability.values().stream().reduce(Double::sum).get();
            for (T t : objectWithProbability.keySet()) {
                Double prob = objectWithProbability.get(t);
                objectWithProbability.put(t, prob / sumOfAllPriorityValues);
            }
        }

        Map<T, RegretBiasInterval> objectWithCumProbability = new HashMap<>();

        double previous = 0;
        for (Map.Entry<T, Double> entry : objectWithProbability.entrySet()) {
            T t = entry.getKey();
            Double prob = entry.getValue();

            RegretBiasInterval regretBiasInterval = new RegretBiasInterval(previous, previous + prob);
            objectWithCumProbability.put(t, regretBiasInterval);
            previous = regretBiasInterval.max;
        }

        T selected = null;
        double random = Math.random();
        for (Map.Entry<T, RegretBiasInterval> entry : objectWithCumProbability.entrySet()) {
            T t = entry.getKey();
            RegretBiasInterval regretBiasInterval = entry.getValue();

            if (regretBiasInterval.getMin() < random && random <= regretBiasInterval.getMax())
                selected = t;
        }

        if (selected == null)
            System.out.println("");

        return selected;
    }
     */

    public ScheduleRepresentation buildScheduleRepresentation(Benchmark benchmark, HeuristicSelection heuristicSelectionActivity, HeuristicSelection heuristicSelectionMode) throws NoNonRenewableResourcesLeftException {
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
            Map<Job, Double> activityPriorityValues = this.computePriorityValueForJobs(possibleJobs, activityScheduled, modesScheduled, benchmark);
            Job selectedJob = this.samplingMinMax(activityPriorityValues, heuristicSelectionMode);;

            // Compute all possible modes acc. to the heuristic alg
            Map<Mode, Double> modesPriorityValues = this.computeModePriorityValues(selectedJob, activityScheduled, modesScheduled, reservation, benchmark);
            Mode selectedMode = this.samplingMinMax(modesPriorityValues, heuristicSelectionMode);

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
