package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;
import java.util.Map;

public class LRSHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark) {
        boolean filtered = filterNonPossibleModes(job, mode, reservation, reservedResources, nonRenewableResourcesLeft, benchmark);
        if (filtered) return Double.MAX_VALUE;

        double sumNonRenewableResources = 0;
        for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();
            if (resource instanceof NonRenewableResource) {
                if (amount != 0) {
                    sumNonRenewableResources += (double) amount / nonRenewableResourcesLeft.get(resource);
                }
            }
        }

        if (Double.isInfinite(sumNonRenewableResources) || sumNonRenewableResources < 0)
            sumNonRenewableResources = Double.MAX_VALUE;

        return sumNonRenewableResources;
    }

    public LRSHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
