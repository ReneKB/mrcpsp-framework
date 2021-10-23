package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;

import java.util.List;
import java.util.Map;
import java.util.Random;

public class RandomModeHeuristic extends ModeHeuristic {

    @Override
    public double determineModePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Map<Job, List<Mode>> reservation, Map<Resource, Integer> reservedResources, Map<Resource, Integer> nonRenewableResourcesLeft, Benchmark benchmark) {
        boolean filtered = filterNonPossibleModes(job, mode, reservation, reservedResources, nonRenewableResourcesLeft, benchmark);
        if (filtered) return Double.MAX_VALUE;

        // In the end, mode should be selected randomly (generate an arbitrary random no)
        return new Random().nextInt(10000);
    }

    public RandomModeHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
