package de.uol.sao.mrcpsp_framework.heuristic.modes;

import de.uol.sao.mrcpsp_framework.benchmark.model.*;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.heuristic.activities.*;
import lombok.Getter;

import java.util.List;

public abstract class ModeHeuristic {
    @Getter
    protected Optimum optimum;

    public abstract double determineModePriorityValue(Activity activity,
                                                      Mode mode,
                                                      List<Activity> scheduledActivities,
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
