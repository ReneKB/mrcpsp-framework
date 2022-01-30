package de.uol.sao.rcpsp_framework.function;

import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import lombok.*;

/**
 * A Multi-Objective function that make use of two metrics which acts as a priority-
 * based selection function. A schedule with a better primary metric will be considered
 * as better regardless of the secondary value. In case both schedule have the same
 * primary value, the secondary metric will be considered.
 */
@EqualsAndHashCode(callSuper = true)
@Data
@Builder
@AllArgsConstructor
public class MultiObjectiveByPriorityFunction extends ObjectiveFunction {
    private Metric<?> primary;
    private Metric<?> secondary;

    @Override
    public boolean compare(Schedule a, Schedule b) {
        if (a == null)
            return false;
        else if (b == null || (primary.getOptimum() == Optimum.MIN ?
                this.getValue(b, primary) > this.getValue(a, primary) :
                this.getValue(b, primary) < this.getValue(a, primary))) {
            return true;
        } else if(secondary != null &&
                secondary.getOptimum() == Optimum.MIN &&
                (this.getValue(a, primary) == this.getValue(b, primary)) &&
                (this.getValue(a, secondary) < this.getValue(b, secondary))) {
            return true;
        } else if (secondary != null &&
                secondary.getOptimum() == Optimum.MAX &&
                (this.getValue(a, primary) == this.getValue(b, primary)) &&
                (this.getValue(a, secondary) > this.getValue(b, secondary))) {
            return true;
        }

        return false;
    }

    @Override
    public double fitness(Schedule schedule) {
        double primary = super.getValue(schedule, this.getPrimary());
        double secondary = this.getSecondary() != null ? super.getValue(schedule, this.getSecondary()) *
                (this.getSecondary().getOptimum() == Optimum.MAX ? 1 : -1) : 0;

        return primary - secondary / 100;
    }

    @Override
    public String toString() {
        return "MultiObjectiveByPriorityFunction{" +
                "primary=" + primary +
                ", secondary=" + secondary +
                '}';
    }
}
