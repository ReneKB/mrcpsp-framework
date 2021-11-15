package de.uol.sao.rcpsp_framework.model.metrics;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;

import java.util.Map;

/**
 * Robust Measurement function that sums the slacks of all jobs.
 */
public class RobustMeasure2 extends Metric<Double> {

    @Override
    public Double computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeSlacks(scheduleRelationInfo);

        return (double) slack.keySet().stream().map(slack::get).reduce(Integer::sum).get() / schedule.computeMetric(Metrics.MAKESPAN);
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MIN;
    }
}
