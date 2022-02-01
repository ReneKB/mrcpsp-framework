package de.uol.sao.mrcpsp_framework.metric;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.scheduling.SchedulePlanInfo;
import lombok.SneakyThrows;

import java.util.Map;

/**
 * Robust Measurement function that uses binary slacks with weight of succescors.
 */
public class SF2_W1 extends Metric<Integer> {

    @Override
    @SneakyThrows
    public Integer computeMetric(Schedule schedule) {
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Activity, Integer> slack = ScheduleHelper.computeFreeSlacks(schedulePlanInfo);

        return slack.keySet().stream().map(job -> slack.get(job) > 0 ? job.getSuccessors().size() : 0).reduce(Integer::sum).get();
    }

    @Override
    public Optimum getOptimum() {
        return Optimum.MAX;
    }
}
