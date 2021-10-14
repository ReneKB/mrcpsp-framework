package de.uol.sao.rcpsp_framework.services.metrics;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;

import java.util.Map;

/**
 * Robust Measurement function that sums the slacks of all jobs.
 */
public class RobustMeasure1 extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeSlacks(scheduleRelationInfo);

        return slack.keySet().stream().map(slack::get).reduce(Integer::sum).get();
    }

}
