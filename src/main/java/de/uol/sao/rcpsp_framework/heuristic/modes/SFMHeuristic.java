package de.uol.sao.rcpsp_framework.heuristic.modes;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;

import java.util.List;

public class SFMHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Activity activity, Mode mode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        return mode.getDuration();
    }

    public SFMHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
