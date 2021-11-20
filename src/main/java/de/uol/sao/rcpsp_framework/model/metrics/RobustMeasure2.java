package de.uol.sao.rcpsp_framework.model.metrics;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;
import lombok.SneakyThrows;

import java.util.Map;

/**
 * Robust Measurement function that returns the minimum of the free slacks
 */
public class RobustMeasure2 extends Metric<Double> {

    @Override
    @SneakyThrows
    public Double computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack =  ScheduleHelper.computeFreeSlacks(scheduleRelationInfo);

        double minimalValue = Double.MAX_VALUE;
        for (Integer value : slack.values()) {
            if (minimalValue > value)
                minimalValue = value;
        }

        return minimalValue;
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MAX;
    }
}