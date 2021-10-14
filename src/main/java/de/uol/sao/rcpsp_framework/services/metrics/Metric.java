package de.uol.sao.rcpsp_framework.services.metrics;

import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import lombok.Data;

@Data
public abstract class Metric<T> {
    public abstract T computeMetric(Schedule schedule);
}
