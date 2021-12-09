package de.uol.sao.rcpsp_framework.heuristic;

import de.uol.sao.rcpsp_framework.heuristic.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.heuristic.modes.ModeHeuristic;
import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class Heuristic {
    private Class<? extends ModeHeuristic> modeHeuristic;
    private Class<? extends ActivityHeuristic> activityHeuristic;
}
