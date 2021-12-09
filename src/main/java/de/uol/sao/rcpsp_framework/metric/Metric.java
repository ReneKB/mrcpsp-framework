package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;

public abstract class Metric<T> {
    public abstract T computeMetric(Schedule schedule);

    public String toString() {
        return this.getClass().getSimpleName();
    }

    public abstract HeuristicSelection getOptimum();
}
