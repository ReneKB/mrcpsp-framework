package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;

import java.util.List;

public class MTSHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, Mode jobSelectedMode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return job.getSuccessor().size();
    }

    public MTSHeuristic() {
        this.heuristicSelection = HeuristicSelection.MAX;
    }
}
