package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.RenewableResource;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Schedule {
    Benchmark benchmark;
    Map<Resource, List<Interval>> resourcePlans = new HashMap<>();
    ScheduleRepresentation scheduleRepresentation;

    public int getMakespan() {
        AtomicInteger makespan = new AtomicInteger();
        resourcePlans.forEach((resource, intervals) -> {
            if (resource instanceof RenewableResource)
                intervals.forEach(interval -> makespan.set(Math.max(interval.getUpperBound() + 1, makespan.get())));
        });
        return makespan.get();
    }
}
