package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.SchedulePlanInfo;
import lombok.SneakyThrows;

import java.util.HashMap;
import java.util.Map;

/**
 * Robust Measurement function that sums up the minimum between the slack and the part of a activity duration
 */
public class SF3_W1 extends Metric<Double> {

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

        return slacks.keySet().stream().map(job -> Math.min((double) slacks.get(job), frac * durations.get(job)) * job.getSuccessors().size()).reduce(Double::sum).get();
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MAX;
    }
}
