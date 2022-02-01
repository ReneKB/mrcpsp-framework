package de.uol.sao.mrcpsp_framework.heuristic.activities;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.List;

public class MTSHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Activity activity, Mode jobSelectedMode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        return activity.getSuccessors().size();
    }

    public MTSHeuristic() {
        this.optimum = Optimum.MAX;
    }
}
