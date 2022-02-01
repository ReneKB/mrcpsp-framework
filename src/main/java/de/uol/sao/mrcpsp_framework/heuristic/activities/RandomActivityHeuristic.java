package de.uol.sao.mrcpsp_framework.heuristic.activities;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.function.Optimum;

import java.util.List;
import java.util.Random;

public class RandomActivityHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Activity activity, Mode jobSelectedMode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        return new Random().nextInt(10000);
    }

    public RandomActivityHeuristic() {
        this.optimum = Optimum.MIN;
    }
}
