package de.uol.sao.rcpsp_framework.metric;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.helper.Selection;
import de.uol.sao.rcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;

import java.util.HashMap;
import java.util.Map;

public class Cost extends Metric<Integer> {

    @Override
    public Integer computeMetric(Schedule schedule) {
        Map<Activity, Integer> activitySum = new HashMap<>();
        int modeSum = 0;

        Map<Activity, Integer> actualExecution = ScheduleHelper.createScheduleRelationInfo(schedule).getEarliestFinishingTime();
        Map<Activity, Integer> baselineExecution = ScheduleHelper.createScheduleRelationInfo(schedule.getBaselinePlan()).getEarliestFinishingTime();

        actualExecution.forEach((activity, actual) -> {
            Activity mappedActivity = baselineExecution.keySet().stream().filter(baselineActivity -> activity.getActivityId() == baselineActivity.getActivityId()).findFirst().get();
            int baseline = baselineExecution.get(mappedActivity);
            activitySum.put(activity, 1 * Math.abs(baseline - actual));
        });

        int[] actualModeListRepresentation = ((ActivityListRepresentation) schedule.getScheduleRepresentation()).getModes();
        int[] baselineModeListRepresentation = ((ActivityListRepresentation) schedule.getBaselinePlan().getScheduleRepresentation()).getModes();

        for (int i = 0; i < actualModeListRepresentation.length; i++) {
            modeSum = actualModeListRepresentation[i] == baselineModeListRepresentation[i] ? 0 : 1;
        }

        int sum = activitySum.values().stream().reduce(Integer::sum).get() + modeSum;
        if (sum != 0)
            System.out.println("sum");

        return sum;
    }

    @Override
    public Selection getOptimum() {
        return Selection.MIN;
    }
}
