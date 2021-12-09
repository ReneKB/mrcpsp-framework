package de.uol.sao.rcpsp_framework.heuristic.modes;

import de.uol.sao.rcpsp_framework.benchmark.model.*;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class LTRUHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        AtomicInteger sumNonRenewableResources = new AtomicInteger();
        mode.getRequestedResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                sumNonRenewableResources.addAndGet(amount);
            }
        });

        return sumNonRenewableResources.get();
    }

    public LTRUHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
