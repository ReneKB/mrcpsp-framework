package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
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
        MTSHeuristic.class,
        RandomActivityHeuristic.class
    };
}