package de.uol.sao.rcpsp_framework.services.metrics;

import de.uol.sao.rcpsp_framework.helper.BenchmarkHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import org.jfree.chart.util.ArrayUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class RobustMeasure1 extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
        Map<Job, Integer> slack = ScheduleHelper.computeSlacks(scheduleRelationInfo);

        return slack.keySet().stream().map(slack::get).reduce(Integer::sum).get();
    }

}
