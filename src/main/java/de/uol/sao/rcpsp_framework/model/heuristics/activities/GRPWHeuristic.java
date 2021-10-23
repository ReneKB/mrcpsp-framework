package de.uol.sao.rcpsp_framework.model.heuristics.activities;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.Comparator;
import java.util.List;

public class GRPWHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Mode highestDurationMode = job.getModes().stream().sorted(Comparator.comparingInt(Mode::getDuration)).findFirst().get();
        int duration = highestDurationMode.getDuration();

        for (Job successorJob : job.getSuccessor()) {
            Mode successorHighestDurationMode = successorJob.getModes().stream().sorted(Comparator.comparingInt(Mode::getDuration)).findFirst().get();
            duration += successorHighestDurationMode.getDuration();
        }

        return duration;
    }

    public GRPWHeuristic() {
        this.heuristicSelection = HeuristicSelection.MAX;
    }
}
