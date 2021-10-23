package de.uol.sao.rcpsp_framework.model.heuristics.activities;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;

public class GNSHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return job.getSuccessor().size();
    }

    public GNSHeuristic() {
        this.heuristicSelection = HeuristicSelection.MAX;
    }
}
