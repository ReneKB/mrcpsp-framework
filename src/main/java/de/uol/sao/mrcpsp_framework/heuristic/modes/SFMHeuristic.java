package de.uol.sao.mrcpsp_framework.heuristic.modes;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.List;

public class SFMHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Activity activity, Mode mode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        return mode.getDuration();
    }

    public SFMHeuristic() {
        this.optimum = Optimum.MIN;
    }
}
