package de.uol.sao.mrcpsp_framework.metric;

import de.uol.sao.mrcpsp_framework.benchmark.model.RenewableResource;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * The most relevant metric for the MRCSP which is the longest
 */
public class Makespan extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        AtomicInteger makespan = new AtomicInteger();
        schedule.getSchedulePlan().forEach((resource, intervals) -> {
            if (resource instanceof RenewableResource)
                intervals.forEach(interval -> makespan.set(Math.max(interval.getUpperBound() + 1, makespan.get())));
        });
        return makespan.get();
    }

    @Override
    public Optimum getOptimum() {
        return Optimum.MIN;
    }
}
