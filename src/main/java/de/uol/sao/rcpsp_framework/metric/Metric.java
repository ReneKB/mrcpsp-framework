package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.function.Optimum;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;

public abstract class Metric<T> {
    public abstract T computeMetric(Schedule schedule);

    public String toString() {
        return this.getClass().getSimpleName();
    }

    public abstract Optimum getOptimum();

    @Override
    public boolean equals(Object obj) {
        return this.toString().equals(obj.toString());
    }

    @Override
    public int hashCode() {
        return toString().hashCode();
    }
}
