package de.uol.sao.mrcpsp_framework.heuristic.modes;

import de.uol.sao.mrcpsp_framework.benchmark.model.*;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.List;
import java.util.Map;

public class LPSRDHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Activity activity, Mode mode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
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
        this.optimum = Optimum.MIN;
    }
}
