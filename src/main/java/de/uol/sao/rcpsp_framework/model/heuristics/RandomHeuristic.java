package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

/**
 * Actual no heuristic however similar to the heuristics. Mainly this heuristic takes the "reservation" of needed modes
 * into account
 */
public class RandomHeuristic extends Heuristic {

    @Override
    int determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return new Random().nextInt();
    }

    @Override
    int determineModePriorityValue(Job job,
                                   Mode mode,
                                   List<Job> scheduledJobs,
                                   List<Mode> scheduledModes,
                                   Map<Job, List<Mode>> reservation,
                                   Map<Resource, Integer> reservedResources,
                                   Map<Resource, Integer> nonRenewableResourcesLeft,
                                   Benchmark benchmark) {

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
                if (reservation.containsKey(job))
                    reservedResourcesAmount = 0;
                
                if (possibleRequestedAmount > nonRenewableResourcesLeft.get(possibleRequestedResource) - reservedResourcesAmount)
                    return Integer.MAX_VALUE;
            } else if (possibleRequestedResource instanceof RenewableResource) {
                if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                    return Integer.MAX_VALUE;
            }
        }

        // In the end, mode should be selected randomly (generate an arbitrary random no)
        return new Random().nextInt(10000);
    }
}
