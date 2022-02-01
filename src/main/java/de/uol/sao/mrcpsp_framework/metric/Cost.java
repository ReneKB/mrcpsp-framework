package de.uol.sao.mrcpsp_framework.metric;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Cost extends Metric<Integer> {
    Schedule baselineSchedule;
    Map<Integer, Integer> weights = new HashMap<>();
    Map<Integer, Integer> modeSwitchingCosts = new HashMap<>();

    public Cost(Schedule baselineSchedule) {
        this.baselineSchedule = baselineSchedule;
        Iterator<Activity> activityIterator = this.baselineSchedule.getBenchmark().getProject().getActivities().iterator();
        BinomialDistribution binomialDistribution = new BinomialDistribution(15, 0.45);
        while (activityIterator.hasNext()) {
            Activity activity = activityIterator.next();
            int value = binomialDistribution.sample();

            // if last
            if (!activityIterator.hasNext()) {
                value = (int) (10 * binomialDistribution.getNumericalMean());
            }

            weights.put(activity.getActivityId(), value);
        }

        for (int i = 1; i < this.baselineSchedule.getBenchmark().getProject().getActivities().get(1).getModes().size() + 1; i++) {
            modeSwitchingCosts.put(i, new UniformIntegerDistribution(1, 5).sample());
        }
    }

    @Override
    public Integer computeMetric(Schedule schedule) {
        Map<Activity, Integer> activitySum = new HashMap<>();
        int modeSum = 0;

        Map<Activity, Integer> actualExecution = ScheduleHelper.createScheduleRelationInfo(schedule).getEarliestStartingTime();
        Map<Activity, Integer> baselineExecution = ScheduleHelper.createScheduleRelationInfo(this.baselineSchedule).getEarliestStartingTime();

        actualExecution.forEach((activity, actual) -> {
            Activity mappedActivity = baselineExecution.keySet().stream().filter(baselineActivity -> activity.getActivityId() == baselineActivity.getActivityId()).findFirst().get();
            int baseline = baselineExecution.get(mappedActivity);
            activitySum.put(activity, weights.get(activity.getActivityId()) * Math.abs(actual - baseline));
        });

        Activity dummyEndActivityActual = schedule.getBenchmark().getProject().getActivities().get(schedule.getBenchmark().getProject().getActivities().size() - 1);
        activitySum.put(dummyEndActivityActual, weights.get(dummyEndActivityActual.getActivityId()) * Math.abs((schedule.computeMetric(Metrics.MAKESPAN) - 1) - (this.baselineSchedule.computeMetric(Metrics.MAKESPAN) - 1)));

        int[] actualModeListRepresentation = ((ActivityListRepresentation) schedule.getScheduleRepresentation()).getModes();
        int[] baselineModeListRepresentation = ((ActivityListRepresentation) this.baselineSchedule.getScheduleRepresentation()).getModes();

        for (int i = 0; i < actualModeListRepresentation.length; i++) {
            modeSum = actualModeListRepresentation[i] == baselineModeListRepresentation[i] ? 0 : modeSwitchingCosts.get(actualModeListRepresentation[i]);
        }

        int sum = activitySum.values().stream().reduce(Integer::sum).get() + modeSum;

        return sum;
    }

    @Override
    public Optimum getOptimum() {
        return Optimum.MIN;
    }
}
