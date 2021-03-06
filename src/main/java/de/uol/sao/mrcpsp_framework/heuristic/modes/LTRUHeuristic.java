package de.uol.sao.mrcpsp_framework.heuristic.modes;

import de.uol.sao.mrcpsp_framework.benchmark.model.*;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class LTRUHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Activity activity, Mode mode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        AtomicInteger sumNonRenewableResources = new AtomicInteger();
        mode.getRequestedResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                sumNonRenewableResources.addAndGet(amount);
            }
        });

        return sumNonRenewableResources.get();
    }

    public LTRUHeuristic() {
        this.optimum = Optimum.MIN;
    }
}
