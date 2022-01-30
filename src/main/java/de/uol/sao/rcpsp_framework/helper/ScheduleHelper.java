package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.NonRenewableResource;
import de.uol.sao.rcpsp_framework.benchmark.model.Resource;
import de.uol.sao.rcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.rcpsp_framework.function.Optimum;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
import de.uol.sao.rcpsp_framework.scheduling.Interval;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.SchedulePlanInfo;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * The schedule helper containing helpful functions which are related to schedule and their information of a project
 */
@Log4j2
public class ScheduleHelper {

    /**
     * Creates a {@link SchedulePlanInfo} which contains activity plan information, like earliest/latest
     * finishing and starting times of each job.
     * @param schedule The schedule of relevance
     * @return The object {@link SchedulePlanInfo} with the computed values
     */
    @SneakyThrows
    public static SchedulePlanInfo createScheduleRelationInfo(Schedule schedule) {
        Schedule backwardRecursion = new SchedulerService().createScheduleBackward(schedule);

        SchedulePlanInfo schedulePlanInfo = new SchedulePlanInfo();
        Map<Activity, Integer> latestStartingTime = schedulePlanInfo.getLatestStartingTime();
        Map<Activity, Integer> latestFinishingTime = schedulePlanInfo.getLatestFinishingTime();
        List<Activity> activities = schedule.getBenchmark().getProject().getActivities();

        Map<Activity, Integer> actualStartingTime = schedulePlanInfo.getEarliestStartingTime();
        Map<Activity, Integer> actualFinishingTime = schedulePlanInfo.getEarliestFinishingTime();
        actualStartingTime.put(activities.get(0), 0);
        actualFinishingTime.put(activities.get(0), 0);

        for (Map.Entry<Resource, List<Interval>> entry : schedule.getSchedulePlan().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Activity activity = interval.getSource().getActivity();
                int beginning = actualStartingTime.getOrDefault(activity, Integer.MIN_VALUE);
                beginning = Math.max(interval.getLowerBound(), beginning);
                actualStartingTime.put(activity, beginning);

                int ending = actualFinishingTime.getOrDefault(activity, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                actualFinishingTime.put(activity, ending);
            }
        }

        int lowestBound = Integer.MAX_VALUE;
        for (Map.Entry<Resource, List<Interval>> entry : backwardRecursion.getSchedulePlan().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Activity activity = interval.getSource().getActivity();
                int beginning = actualStartingTime.getOrDefault(activity, Integer.MIN_VALUE);
                beginning = Math.max(interval.getLowerBound(), beginning);
                latestStartingTime.put(activity, beginning);

                int ending = actualFinishingTime.getOrDefault(activity, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                latestFinishingTime.put(activity, ending);

                lowestBound = Math.min(lowestBound, beginning);
            }
        }

        latestFinishingTime.put(activities.get(0), lowestBound);
        latestStartingTime.put(activities.get(0), lowestBound);

        return schedulePlanInfo;
    }

    public static Map<Activity, Integer> getEarliestFinishingTime(Schedule schedule) {
        List<Activity> activities = schedule.getBenchmark().getProject().getActivities();
        Map<Activity, Integer> earliestFinishingTime = new HashMap<>();
        earliestFinishingTime.put(activities.get(0), 0);

        for (Map.Entry<Resource, List<Interval>> entry : schedule.getSchedulePlan().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Activity activity = interval.getSource().getActivity();
                int ending = earliestFinishingTime.getOrDefault(activity, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                earliestFinishingTime.put(activity, ending);
            }
        }

        earliestFinishingTime.put(activities.get(activities.size() - 1), schedule.computeMetric(Metrics.MAKESPAN));
        return earliestFinishingTime;
    }

    /**
     * Computes the free slack S for every job. Relevant for a lot of robustness calculations.
     * @param schedulePlanInfo The schedule relation information with computed EST/EFT and LST/LFT
     * @return The map of all job slacks
     */
    public static Map<Activity, Integer> computeFreeSlacks(SchedulePlanInfo schedulePlanInfo) {
        Map<Activity, Integer> slack = new HashMap<>();

        // Calculate the slack now
        schedulePlanInfo.getLatestStartingTime().forEach((job, integer) -> {
            slack.put(job, integer - schedulePlanInfo.getEarliestStartingTime().get(job));
        });

        return slack;
    }

    /**
     * Output function for a schedule
     * @param schedule Schedule of relevance
     * @param robustnessMetric Selected robustness metric which should be printed as well
     */
    public static void outputSchedule(Schedule schedule, Metric robustnessMetric) {
        if (schedule == null) {
            log.info("No result available");
        }
        else {
            if (robustnessMetric != null) {
                log.info(String.format("Makespan: %d - %s: %s - %s",
                        schedule.computeMetric(Metrics.MAKESPAN),
                        robustnessMetric.getClass().getSimpleName(),
                        schedule.computeMetric(robustnessMetric).toString(),
                        schedule.getScheduleRepresentation()));
            } else {
                log.info(String.format("Makespan: %d - %s",
                        schedule.computeMetric(Metrics.MAKESPAN),
                        schedule.getScheduleRepresentation()));
            }
        }
    }

    public static boolean compareSchedule(Schedule schedule, Schedule currentBestSchedule, Metric<?> robustnessMeasure) {
        if (schedule == null)
            return false;
        else if (currentBestSchedule == null || (currentBestSchedule.computeMetric(Metrics.MAKESPAN) > schedule.computeMetric(Metrics.MAKESPAN))) {
            return true;
        } else if(robustnessMeasure != null &&
                robustnessMeasure.getOptimum() == Optimum.MIN &&
                (currentBestSchedule.computeMetric(Metrics.MAKESPAN) == schedule.computeMetric(Metrics.MAKESPAN)) &&
                (Double.parseDouble(currentBestSchedule.computeMetric(robustnessMeasure).toString()) > Double.parseDouble(schedule.computeMetric(robustnessMeasure).toString()))) {
            return true;
        } else if(robustnessMeasure != null &&
                robustnessMeasure.getOptimum() == Optimum.MAX &&
                (currentBestSchedule.computeMetric(Metrics.MAKESPAN) == schedule.computeMetric(Metrics.MAKESPAN)) &&
                (Double.parseDouble(currentBestSchedule.computeMetric(robustnessMeasure).toString()) < Double.parseDouble(schedule.computeMetric(robustnessMeasure).toString()))) {
            return true;
        }

        return false;
    }

    public static boolean compareSchedule(Schedule a, Schedule b, ObjectiveFunction comparator) {
        return comparator.compare(a, b);
    }

    /**
     * A schedule plan doesn't consider non-renewable resources in the intervals. However
     * for visualization non-renewable resources can be interesting tho. This method returns
     * a resource with lists of intervals, so these can be visualized.
     * @param schedule A schedule containing a schedule plan
     * @return A schedule plan including non renewable resources
     */
    public static Map<Resource, List<Interval>> getFullSchedulePlan(Schedule schedule) {
        int endInterval = schedule.computeMetric(Metrics.MAKESPAN) - 1;
        List<ActivityMode> activityModes = schedule.getScheduleRepresentation().toActivityModeList(schedule.getBenchmark().getProject());

        Map<Resource, List<Interval>> schedulePlan = new HashMap<>(schedule.getSchedulePlan());
        activityModes.forEach(jobMode -> {
            jobMode.getMode().getRequestedResources().forEach((resource, amount) -> {
                if (resource instanceof NonRenewableResource) {
                    int beginInterval = schedule.getBenchmark().getHorizon();
                    for (List<Interval> intervals : schedule.getSchedulePlan().values()) {
                        for (Interval interval : intervals) {
                            if (interval.getSource().equals(jobMode)) {
                                beginInterval = Math.min(interval.getLowerBound(), beginInterval);
                            }
                        }
                    }

                    Interval interval = new Interval(beginInterval, endInterval, amount, jobMode);
                    List<Interval> intervals = schedulePlan.getOrDefault(resource, new ArrayList<>());
                    intervals.add(interval);
                    schedulePlan.put(resource, intervals);
                }
            });
        });

        return schedulePlan;
    }
}
