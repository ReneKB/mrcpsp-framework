package de.uol.sao.rcpsp_framework.model.heuristics.activities;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import lombok.Getter;

import java.util.List;

public abstract class ActivityHeuristic {
    @Getter
    protected HeuristicSelection heuristicSelection;

    public abstract double determineActivityPriorityValue(Job job,
                                                          Mode jobSelectedMode,
                                                          List<Job> scheduledJobs,
                                                          List<Mode> scheduledModes,
                                                          Benchmark benchmark);

    public static Class<?>[] availableActivityHeuristics = new Class<?>[] {
        GRPWHeuristic.class,
        LFTHeuristic.class,
        LSTHeuristic.class,
        MSLKHeuristic.class,
        MSLKHeuristic.class,
        MTSHeuristic.class,
        RandomActivityHeuristic.class
    };
}
