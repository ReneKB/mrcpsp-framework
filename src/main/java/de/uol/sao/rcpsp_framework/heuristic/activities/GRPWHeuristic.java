package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;

import java.util.Comparator;
import java.util.List;

public class GRPWHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, Mode jobSelectedMode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
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
