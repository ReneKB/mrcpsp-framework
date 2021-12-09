package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.ScheduleRelationInfo;
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
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slacks = ScheduleHelper.computeFreeSlacks(scheduleRelationInfo);
        Map<Job, Integer> durations = new HashMap<>();
        scheduleRelationInfo.getEarliestFinishingTime().forEach((job, earliestFinishingTime) -> {
            durations.put(job, earliestFinishingTime - scheduleRelationInfo.getEarliestStartingTime().get(job));
        });

        return slacks.keySet().stream().map(job -> Math.min((double) slacks.get(job), frac * durations.get(job)) * ProjectHelper.getAllPredecessorsOfJob(schedule.getBenchmark().getProject(), job).size()).reduce(Double::sum).get();
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MAX;
    }
}
