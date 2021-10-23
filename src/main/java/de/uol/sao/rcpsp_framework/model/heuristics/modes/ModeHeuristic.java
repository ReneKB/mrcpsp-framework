package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import lombok.Getter;

import java.util.List;
import java.util.Map;

public abstract class ModeHeuristic {
    @Getter
    protected HeuristicSelection heuristicSelection;

    public abstract double determineModePriorityValue(Job job,
                                                      Mode mode,
                                                      List<Job> scheduledJobs,
                                                      List<Mode> scheduledModes,
                                                      Map<Job, List<Mode>> reservation,
                                                      Map<Resource, Integer> reservedResources,
                                                      Map<Resource, Integer> nonRenewableResourcesLeft,
                                                      Benchmark benchmark);


    protected boolean filterNonPossibleModes(Job job, Mode mode, Map<Job, List<Mode>> reservation, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark) {
        // If a reservation for the job is determined, than these should be focused. Means for this algorithmus:
        // Every non-reserved modes from a reserved job will be removed
        if (reservation.containsKey(job)) {
            List<Mode> reservedModes = reservation.get(job);
            if (!reservedModes.contains(mode))
                return true;
        }

        for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
            Resource possibleRequestedResource = entry.getKey();
            Integer possibleRequestedAmount = entry.getValue();
            if (possibleRequestedResource instanceof NonRenewableResource) {
                int reservedResourcesAmount = reservedResources.getOrDefault(possibleRequestedResource, 0);
                if (reservation.containsKey(job))
                    reservedResourcesAmount = 0;

                if (possibleRequestedAmount > nonRenewableResourcesLeft.get(possibleRequestedResource) - reservedResourcesAmount)
                    return true;
            } else if (possibleRequestedResource instanceof RenewableResource) {
                if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                    return true;
            }
        }

        return false;
    }

}
