package de.uol.sao.mrcpsp_framework.metric;

import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.scheduling.SchedulePlanInfo;
import lombok.SneakyThrows;

import java.util.HashMap;
import java.util.Map;

/**
 * Robust Measurement function that sums up the minimum between the slack and the part of a activity duration
 */
public class SF3_W9 extends Metric<Double> {

    final double frac = .2;

    @Override
    @SneakyThrows
    public Double computeMetric(Schedule schedule) {
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Activity, Integer> slacks = ScheduleHelper.computeFreeSlacks(schedulePlanInfo);
        Map<Activity, Integer> durations = new HashMap<>();
        schedulePlanInfo.getEarliestFinishingTime().forEach((job, earliestFinishingTime) -> {
            durations.put(job, earliestFinishingTime - schedulePlanInfo.getEarliestStartingTime().get(job));
        });

        return slacks.keySet().stream().map(job -> Math.min((double) slacks.get(job), frac * durations.get(job)) * ProjectHelper.getAllPredecessorsOfJob(schedule.getBenchmark().getProject(), job).size()).reduce(Double::sum).get();
    }

    @Override
    public Optimum getOptimum() {
        return Optimum.MAX;
    }
}
