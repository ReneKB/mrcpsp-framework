package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.function.Optimum;
import lombok.Getter;

import java.util.List;

public abstract class ActivityHeuristic {
    @Getter
    protected Optimum optimum;

    public abstract double determineActivityPriorityValue(Activity activity,
                                                          Mode jobSelectedMode,
                                                          List<Activity> scheduledActivities,
                                                          List<Mode> scheduledModes,
                                                          Benchmark benchmark);

    public static Class<?>[] availableActivityHeuristics = new Class<?>[] {
        GRPWHeuristic.class,
        LFTHeuristic.class,
        LSTHeuristic.class,
        MSLKHeuristic.class,
        MTSHeuristic.class,
        RandomActivityHeuristic.class
    };
}
