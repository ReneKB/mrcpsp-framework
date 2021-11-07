package de.uol.sao.rcpsp_framework.model.metrics;

import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import lombok.Data;
import lombok.ToString;

public abstract class Metric<T> {
    public abstract T computeMetric(Schedule schedule);

    public String toString() {
        return this.getClass().getSimpleName();
    }

    public abstract HeuristicSelection getOptimum();
}
