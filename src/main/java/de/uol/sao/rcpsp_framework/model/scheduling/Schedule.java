package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
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
    Map<Resource, List<Interval>> resourcePlans = new HashMap<>();
    ScheduleRepresentation scheduleRepresentation;

    public <T> T computeMetric(Metric<T> metric) {
        return (T) metric.computeMetric(this);
    }

    public boolean isPartialSchedule() {
        return scheduleRepresentation.toJobMode(benchmark.getProject()).size() != this.getBenchmark().getProject().getJobs().size();
    }

    public String toString() {
        return String.format("[Makespan = %d] %s", this.computeMetric(Metrics.MAKESPAN), scheduleRepresentation);
    }
}
