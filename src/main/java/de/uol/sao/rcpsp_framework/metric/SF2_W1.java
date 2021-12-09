package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.ScheduleRelationInfo;
import lombok.SneakyThrows;

import java.util.Map;

/**
 * Robust Measurement function that uses binary slacks with weight of succescors.
 */
public class SF2_W1 extends Metric<Integer> {

    @Override
    @SneakyThrows
    public Integer computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeFreeSlacks(scheduleRelationInfo);

        return slack.keySet().stream().map(job -> slack.get(job) > 0 ? job.getSuccessor().size() : 0).reduce(Integer::sum).get();
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MAX;
    }
}