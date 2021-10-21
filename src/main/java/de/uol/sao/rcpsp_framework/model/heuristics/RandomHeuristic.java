package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

/**
 * Actual no heuristic however similar to the heuristics.
 */
public class RandomHeuristic extends Heuristic {

    Map<Job, List<Mode>> reservation;

    @Override
    int determinePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        scheduledJobs.forEach(alreadyScheduledJob -> reservation.remove(alreadyScheduledJob));
        Map<Resource, Integer> reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);

        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                nonRenewableResourcesLeft.put(resource, amount);
            }
        });

        // Calculate
        for (int i = 0; i < scheduledJobs.size(); i++) {
            Job scheduledJob = scheduledJobs.get(i);
            Mode scheduledMode = scheduledModes.get(i);

            scheduledMode.getRequestedResources().forEach((scheduledModeResource, scheduledModeAmount) -> {
                Integer resourceLeftAmount = nonRenewableResourcesLeft.get(scheduledModeResource);
                if (resourceLeftAmount != null) {
                    nonRenewableResourcesLeft.put(scheduledModeResource, resourceLeftAmount - scheduledModeAmount);
                }
            });
        }

        // If a reservation for the job is determined, than these should be focused. Means for this algorithmus:
        // Every non-reserved modes from a reserved job will be removed
        if (reservation.containsKey(job)) {
            List<Mode> reservedModes = reservation.get(job);
            if (!reservedModes.contains(mode))
                return Integer.MAX_VALUE;
        }

        for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
            Resource possibleRequestedResource = entry.getKey();
            Integer possibleRequestedAmount = entry.getValue();
            if (possibleRequestedResource instanceof NonRenewableResource) {
                int reservedResourcesAmount = reservedResources.getOrDefault(possibleRequestedResource, 0);
                if (possibleRequestedAmount > nonRenewableResourcesLeft.get(possibleRequestedResource) - reservedResourcesAmount)
                    return Integer.MAX_VALUE;
            } else if (possibleRequestedResource instanceof RenewableResource) {
                if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                        return Integer.MAX_VALUE;
            }
        }

        return new Random().nextInt();
    }

    public RandomHeuristic(Benchmark benchmark) {
        this.reservation = ProjectHelper.getReservationOfNonRenewableResources(benchmark.getProject());
    }
}
