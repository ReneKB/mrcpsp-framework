package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.Selection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.SchedulePlanInfo;
import lombok.SneakyThrows;

import java.util.Map;

/**
 * Robust Measurement function that sums the slacks of all jobs.
 */
public class SF1 extends Metric<Integer> {

    @Override
    @SneakyThrows
    public Integer computeMetric(Schedule schedule) {
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Activity, Integer> slack = ScheduleHelper.computeFreeSlacks(schedulePlanInfo);

        return slack.keySet().stream().map(slack::get).reduce(Integer::sum).get();
    }

    @Override
    public Selection getOptimum() {
        return Selection.MAX;
    }
}
