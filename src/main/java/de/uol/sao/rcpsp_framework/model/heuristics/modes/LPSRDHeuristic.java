package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;
import java.util.Map;

public class LPSRDHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark) {
        double sumNonRenewableResources = 0;
        for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();
            if (resource instanceof NonRenewableResource) {
                if (amount != 0) {
                    sumNonRenewableResources += (double) amount * mode.getDuration();
                }
            }
        }

        return sumNonRenewableResources;
    }

    public LPSRDHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
