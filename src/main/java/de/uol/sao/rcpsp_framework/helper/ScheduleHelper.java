package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;

import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * The schedule helper containing helpful functions which are related to schedule and their information of a project
 */
@Log4j2
public class ScheduleHelper {

    /**
     * Creates a {@link ScheduleRelationInfo} which contains activity plan information, like earliest/latest
     * finishing and starting times of each job.
     * @param schedule The schedule of relevance
     * @return The object {@link ScheduleRelationInfo} with the computed values
     */
    @SneakyThrows
    public static ScheduleRelationInfo createScheduleRelationInfo(Schedule schedule) {
        Schedule backwardRecursion = new SchedulerService().createScheduleBackward(schedule);

        ScheduleRelationInfo scheduleRelationInfo = new ScheduleRelationInfo();
        Map<Job, Integer> latestStartingTime = scheduleRelationInfo.getLatestStartingTime();
        Map<Job, Integer> latestFinishingTime = scheduleRelationInfo.getLatestFinishingTime();
        List<Job> jobs = schedule.getBenchmark().getProject().getJobs();

        Map<Job, Integer> actualStartingTime = scheduleRelationInfo.getEarliestStartingTime();
        Map<Job, Integer> actualFinishingTime = scheduleRelationInfo.getEarliestFinishingTime();
        actualStartingTime.put(jobs.get(0), 0);
        actualFinishingTime.put(jobs.get(0), 0);

        for (Map.Entry<Resource, List<Interval>> entry : schedule.getResourcePlans().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Job job = interval.getSource().getJob();
                int beginning = actualStartingTime.getOrDefault(job, Integer.MIN_VALUE);
                beginning = Math.max(interval.getLowerBound(), beginning);
                actualStartingTime.put(job, beginning);

                int ending = actualFinishingTime.getOrDefault(job, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                actualFinishingTime.put(job, ending);
            }
        }

        int lowestBound = Integer.MAX_VALUE;
        for (Map.Entry<Resource, List<Interval>> entry : backwardRecursion.getResourcePlans().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Job job = interval.getSource().getJob();
                int beginning = actualStartingTime.getOrDefault(job, Integer.MIN_VALUE);
                beginning = Math.max(interval.getLowerBound(), beginning);
                latestStartingTime.put(job, beginning);

                int ending = actualFinishingTime.getOrDefault(job, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                latestFinishingTime.put(job, ending);

                lowestBound = Math.min(lowestBound, beginning);
            }
        }

        latestFinishingTime.put(jobs.get(0), lowestBound);
        latestStartingTime.put(jobs.get(0), lowestBound);

        return scheduleRelationInfo;
    }

    public static Map<Job, Integer> getEarliestFinishingTime(Schedule schedule) {
        List<Job> jobs = schedule.getBenchmark().getProject().getJobs();
        Map<Job, Integer> earliestFinishingTime = new HashMap<>();
        earliestFinishingTime.put(jobs.get(0), 0);

        for (Map.Entry<Resource, List<Interval>> entry : schedule.getResourcePlans().entrySet()) {
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Job job = interval.getSource().getJob();
                int ending = earliestFinishingTime.getOrDefault(job, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                earliestFinishingTime.put(job, ending);
            }
        }

        earliestFinishingTime.put(jobs.get(jobs.size() - 1), schedule.computeMetric(Metrics.MAKESPAN));
        return earliestFinishingTime;
    }

    /**
     * Computes the free slack S for every job. Relevant for a lot of robustness calculations.
     * @param scheduleRelationInfo The schedule relation information with computed EST/EFT and LST/LFT
     * @return The map of all job slacks
     */
    public static Map<Job, Integer> computeFreeSlacks(ScheduleRelationInfo scheduleRelationInfo) {
        Map<Job, Integer> slack = new HashMap<>();

        // Calculate the slack now
        scheduleRelationInfo.getLatestStartingTime().forEach((job, integer) -> {
            slack.put(job, integer - scheduleRelationInfo.getEarliestStartingTime().get(job));
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
                robustnessMeasure.getOptimum() == HeuristicSelection.MIN &&
                (currentBestSchedule.computeMetric(Metrics.MAKESPAN) == schedule.computeMetric(Metrics.MAKESPAN)) &&
                (Double.parseDouble(currentBestSchedule.computeMetric(robustnessMeasure).toString()) > Double.parseDouble(schedule.computeMetric(robustnessMeasure).toString()))) {
            return true;
        } else if(robustnessMeasure != null &&
                robustnessMeasure.getOptimum() == HeuristicSelection.MAX &&
                (currentBestSchedule.computeMetric(Metrics.MAKESPAN) == schedule.computeMetric(Metrics.MAKESPAN)) &&
                (Double.parseDouble(currentBestSchedule.computeMetric(robustnessMeasure).toString()) < Double.parseDouble(schedule.computeMetric(robustnessMeasure).toString()))) {
            return true;
        }

        return false;
    }
}
