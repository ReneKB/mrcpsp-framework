package de.uol.sao.rcpsp_framework.model.metrics;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;

import java.util.Map;

/**
 * Robust Measurement function that uses binary slacks.
 */
public class RobustMeasure3 extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeFreeSlacks(scheduleRelationInfo);

        return slack.keySet().stream().map(job -> slack.get(job) > 0 ? 1 : 0).reduce(Integer::sum).get();
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MIN;
    }
}
