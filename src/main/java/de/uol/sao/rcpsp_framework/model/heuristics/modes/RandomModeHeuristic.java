package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;
import java.util.Random;

public class RandomModeHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return new Random().nextInt(10000);
    }

    public RandomModeHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
