package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import lombok.Getter;

import java.util.List;
import java.util.Map;

public abstract class ModeHeuristic {
    @Getter
    protected HeuristicSelection heuristicSelection;

    public abstract double determineModePriorityValue(Job job,
                                                      Mode mode,
                                                      List<Job> scheduledJobs,
                                                      List<Mode> scheduledModes,
                                                      Map<Job, List<Mode>> reservation,
                                                      Map<Resource, Integer> reservedResources,
                                                      Map<Resource, Integer> nonRenewableResourcesLeft,
                                                      Benchmark benchmark);

}
