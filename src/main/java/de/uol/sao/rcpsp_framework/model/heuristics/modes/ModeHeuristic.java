package de.uol.sao.rcpsp_framework.model.heuristics.modes;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.*;
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
                                                      Benchmark benchmark);

    public static Class<?>[] availableModeHeuristics = new Class<?>[] {
            LPSRDHeuristic.class,
            LRSHeuristic.class,
            LTRUHeuristic.class,
            RandomActivityHeuristic.class,
            SFMHeuristic.class
    };

}
