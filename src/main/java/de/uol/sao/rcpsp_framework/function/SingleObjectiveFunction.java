package de.uol.sao.rcpsp_framework.function;

import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

/**
 * A Single-Objective function that only considers one metric, like the C_max.
 */
@Builder
@AllArgsConstructor
public class SingleObjectiveFunction extends ObjectiveFunction {
    @Getter
    Metric<?> metric;

    @Override
    public boolean compare(Schedule a, Schedule b) {
        if (a == null)
            return false;
        else return b == null || (metric.getOptimum() == Optimum.MIN ?
                this.fitness(b) > this.fitness(a) :
                this.fitness(b) < this.fitness(a));
    }

    @Override
    public double fitness(Schedule schedule) {
        return super.getValue(schedule, this.getMetric());
    }

    @Override
    public String toString() {
        return "SingleObjectiveFunction{" +
                "metric=" + metric +
                '}';
    }
}
