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
                                                   List<Job> scheduledJobs,
                                                   List<Mode> scheduledModes,
                                                   Benchmark benchmark);
}
