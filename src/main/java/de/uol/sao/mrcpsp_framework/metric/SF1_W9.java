package de.uol.sao.mrcpsp_framework.metric;

import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.scheduling.SchedulePlanInfo;
import lombok.SneakyThrows;

import java.util.Map;

/**
 * Robust Measurement function that sums the slacks of all jobs weighed with the direct successors.
 */
public class SF1_W9 extends Metric<Integer> {

    @Override
    @SneakyThrows
    public Integer computeMetric(Schedule schedule) {
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Activity, Integer> slack = ScheduleHelper.computeFreeSlacks(schedulePlanInfo);

        return slack.keySet().stream().map(job -> slack.get(job) *
                ProjectHelper.getAllPredecessorsOfJob(schedule.getBenchmark().getProject(), job).size()).reduce(Integer::sum).get();
    }

    @Override
    public Optimum getOptimum() {
        return Optimum.MAX;
    }
}
