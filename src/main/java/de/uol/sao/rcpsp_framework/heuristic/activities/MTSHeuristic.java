package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.helper.Selection;

import java.util.List;

public class MTSHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Activity activity, Mode jobSelectedMode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        return activity.getSuccessors().size();
    }

    public MTSHeuristic() {
        this.selection = Selection.MAX;
    }
}
