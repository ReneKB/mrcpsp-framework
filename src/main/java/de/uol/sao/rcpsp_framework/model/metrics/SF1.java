package de.uol.sao.rcpsp_framework.model.metrics;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Map;

/**
 * Robust Measurement function that sums the slacks of all jobs.
 */
public class SF1 extends Metric<Integer> {

    @Override
    @SneakyThrows
    public Integer computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeFreeSlacks(scheduleRelationInfo);

        return slack.keySet().stream().map(slack::get).reduce(Integer::sum).get();
    }

    @Override
    public HeuristicSelection getOptimum() {
        return HeuristicSelection.MAX;
    }
}
