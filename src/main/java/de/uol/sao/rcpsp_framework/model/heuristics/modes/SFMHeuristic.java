package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;

public class SFMHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return mode.getDuration();
    }

    public SFMHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
