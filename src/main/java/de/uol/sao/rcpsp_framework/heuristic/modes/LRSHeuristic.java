package de.uol.sao.rcpsp_framework.heuristic.modes;

import de.uol.sao.rcpsp_framework.benchmark.model.*;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LRSHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Activity activity, Mode mode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
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
