package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import lombok.Builder;
import lombok.Getter;

@Builder
public class ScheduleComparator {
    @Getter
    Metric<?> primary;
    @Getter
    Metric<?> secondary;

    public boolean compare(Schedule a, Schedule b) {
        if (a == null)
            return false;
        else if (b == null || (primary.getOptimum() == Selection.MIN ?
                this.getValue(b, primary) > this.getValue(a, primary) :
                this.getValue(b, primary) < this.getValue(a, primary))) {
            return true;
        } else if(secondary != null &&
                secondary.getOptimum() == Selection.MIN &&
                (this.getValue(a, primary) == this.getValue(b, primary)) &&
                (this.getValue(a, secondary) < this.getValue(b, secondary))) {
            return true;
        } else if (secondary != null &&
                secondary.getOptimum() == Selection.MAX &&
                (this.getValue(a, primary) == this.getValue(b, primary)) &&
                (this.getValue(a, secondary) > this.getValue(b, secondary))) {
            return true;
        }

        return false;
    }

    public static double getValue(Schedule schedule, Metric<?> metric) {
        try {
            return Double.parseDouble(schedule.computeMetric(metric).toString());
        } catch (NullPointerException ex) {
            System.out.println(schedule.computeMetric(metric) + " NullPointerException");
            return 0;
        }
    }

    public static ScheduleComparator getMakespanRobustnessComparator(Metric<?> robustness) {
        return ScheduleComparator.builder().primary(Metrics.MAKESPAN).secondary(robustness).build();
    }
}
