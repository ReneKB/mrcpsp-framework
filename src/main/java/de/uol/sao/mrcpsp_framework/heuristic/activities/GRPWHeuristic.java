package de.uol.sao.mrcpsp_framework.heuristic.activities;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.Comparator;
import java.util.List;

public class GRPWHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Activity activity, Mode jobSelectedMode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        Mode highestDurationMode = activity.getModes().stream().sorted(Comparator.comparingInt(Mode::getDuration)).findFirst().get();
        int duration = highestDurationMode.getDuration();

        for (Activity successorActivity : activity.getSuccessors()) {
            Mode successorHighestDurationMode = successorActivity.getModes().stream().sorted(Comparator.comparingInt(Mode::getDuration)).findFirst().get();
            duration += successorHighestDurationMode.getDuration();
        }

        return duration;
    }

    public GRPWHeuristic() {
        this.optimum = Optimum.MAX;
    }
}
