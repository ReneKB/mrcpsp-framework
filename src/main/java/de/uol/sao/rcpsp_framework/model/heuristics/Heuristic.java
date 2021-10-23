package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.model.heuristics.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.ModeHeuristic;
import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class Heuristic {
    private Class<? extends ModeHeuristic> modeHeuristic;
    private Class<? extends ActivityHeuristic> activityHeuristic;
}
