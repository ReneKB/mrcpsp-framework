package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.RenewableResource;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.services.metrics.Metric;
import de.uol.sao.rcpsp_framework.services.metrics.Metrics;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Log4j2
public class Schedule {
    Benchmark benchmark;
    Map<Resource, List<Interval>> resourcePlans = new HashMap<>();
    ScheduleRepresentation scheduleRepresentation;

    public <T> T computeMetric(Metric<T> metric) {
        return (T) metric.computeMetric(this);
    }

}
