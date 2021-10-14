package de.uol.sao.rcpsp_framework.services.metrics;

import de.uol.sao.rcpsp_framework.model.benchmark.RenewableResource;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;

import java.util.concurrent.atomic.AtomicInteger;

/**
 * The most relevant metric for the MRCSP which is the longest
 */
public class Makespan extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        AtomicInteger makespan = new AtomicInteger();
        schedule.getResourcePlans().forEach((resource, intervals) -> {
            if (resource instanceof RenewableResource)
                intervals.forEach(interval -> makespan.set(Math.max(interval.getUpperBound() + 1, makespan.get())));
        });
        return makespan.get();
    }
}
