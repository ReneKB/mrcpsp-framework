package de.uol.sao.rcpsp_framework.scheduling;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Resource;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.extern.log4j.Log4j2;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Log4j2
public class Schedule {
    Benchmark benchmark;
    Map<Resource, List<Interval>> schedulePlan = new HashMap<>();
    ScheduleRepresentation scheduleRepresentation;
    Map<Metric, Object> bufferedMetrics = new HashMap<>();

    public <T> T computeMetric(Metric<T> metric) {
        if (!bufferedMetrics.containsKey(metric))
            bufferedMetrics.put(metric, metric.computeMetric(this));

        return (T) bufferedMetrics.get(metric);
    }

    public boolean isPartialSchedule() {
        return scheduleRepresentation.toJobMode(benchmark.getProject()).size() != this.getBenchmark().getProject().getJobs().size();
    }

    public String toString() {
        return String.format("[Makespan = %d] %s", this.computeMetric(Metrics.MAKESPAN), scheduleRepresentation);
    }
}
