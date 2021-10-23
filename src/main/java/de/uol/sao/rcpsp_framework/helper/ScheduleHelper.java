package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import lombok.extern.log4j.Log4j2;

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
    public static ScheduleRelationInfo createScheduleRelationInfo(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = new ScheduleRelationInfo();
        ScheduleRepresentation scheduleRepresentation = schedule.getScheduleRepresentation();
        List<JobMode> jobModeList = scheduleRepresentation.toJobMode(schedule.getBenchmark().getProject());
        Project project = schedule.getBenchmark().getProject();
        List<Job> jobs = jobModeList.stream().map(JobMode::getJob).collect(Collectors.toList());

        Map<Job, Integer> leastFinishingTime = scheduleRelationInfo.getLeastFinishingTime();
        Map<Job, Integer> leastStartingTime = scheduleRelationInfo.getLeastStartingTime();
        Map<Job, Integer> earliestFinishingTime = scheduleRelationInfo.getEarliestFinishingTime();
        Map<Job, Integer> earliestStartingTime = scheduleRelationInfo.getEarliestStartingTime();

        // Beginning job is always a dummy one
        earliestFinishingTime.put(jobs.get(0), 0);
        earliestStartingTime.put(jobs.get(0), 0);

        // last Job is always a dummy one
        int makespan = schedule.computeMetric(Metrics.MAKESPAN);

        // Computation of EST and EFT
        for (Map.Entry<Resource, List<Interval>> entry : schedule.getResourcePlans().entrySet()) {
            Resource resource = entry.getKey();
            List<Interval> intervals = entry.getValue();

            for (Interval interval : intervals) {
                Job job = interval.getSource().getJob();
                int beginning = earliestStartingTime.getOrDefault(job, Integer.MIN_VALUE);
                beginning = Math.max(interval.getLowerBound(), beginning);
                earliestStartingTime.put(job, beginning);

                int ending = earliestFinishingTime.getOrDefault(job, Integer.MAX_VALUE);
                ending = Math.min(interval.getUpperBound() + 1, ending);
                earliestFinishingTime.put(job, ending);
            }
        }

        if (!schedule.isPartialSchedule()) {
            earliestFinishingTime.put(jobs.get(jobs.size() - 1), makespan);
            earliestStartingTime.put(jobs.get(jobs.size() - 1), makespan);
        }

        // Computation of LST and LFT
        for (int i = jobs.size() - 1; i >= 0; i--) {
            Job job = jobs.get(i);
            JobMode selectedMode = jobModeList.stream().filter(jobMode -> jobMode.getJob().getJobId() == job.getJobId()).findFirst().get();
            int duration = selectedMode.getMode().getDuration();

            int latestEndPoint = Integer.MAX_VALUE;
            List<Job> successorJobs = job.getSuccessor();
            if (successorJobs.isEmpty())
                latestEndPoint = makespan;
            else {
                // Get the minimum of the successors
                for (Job successorJob : successorJobs) {
                    try {
                        latestEndPoint = Math.min(leastStartingTime.getOrDefault(successorJob, makespan), latestEndPoint);
                    } catch (Exception ex) {
                        System.out.println();
                    }
                }
            }

            int latestStartPoint = latestEndPoint - duration;
            leastStartingTime.put(job, latestStartPoint);
            leastFinishingTime.put(job, latestEndPoint);
        }

        return scheduleRelationInfo;
    }

    /**
     * Computes the slack S for every job. Relevant for a lot of robustness calculations.
     * @param scheduleRelationInfo The schedule relation information with computed EST/EFT and LST/LFT
     * @return The map of all job slacks
     */
    public static Map<Job, Integer> computeSlacks(ScheduleRelationInfo scheduleRelationInfo) {
        Map<Job, Integer> slack = new HashMap<>();

        for (Map.Entry<Job, Integer> entry : scheduleRelationInfo.getLeastFinishingTime().entrySet()) {
            Job job = entry.getKey();
            int latestFinishingTime = entry.getValue();
            int earliestFinishingTime = scheduleRelationInfo.getEarliestFinishingTime().get(job);
            slack.put(job, latestFinishingTime - earliestFinishingTime);
        }

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
                log.info(String.format("Makespan: %d - %s: %d - %s",
                        schedule.computeMetric(Metrics.MAKESPAN),
                        robustnessMetric.getClass().getSimpleName(),
                        schedule.computeMetric(robustnessMetric),
                        schedule.getScheduleRepresentation()));
            } else {
                log.info(String.format("Makespan: %d - %s",
                        schedule.computeMetric(Metrics.MAKESPAN),
                        schedule.getScheduleRepresentation()));
            }
        }
    }

    public static boolean compareSchedule(Schedule schedule, Schedule currentBestSchedule, ScheduleComparator scheduleComparator) {
        if (schedule == null)
            return false;
        else if (currentBestSchedule == null || (currentBestSchedule.computeMetric(Metrics.MAKESPAN) > schedule.computeMetric(Metrics.MAKESPAN))) {
            return true;
        } else if(scheduleComparator == ScheduleComparator.MAKESPAN_AND_RM &&
                (currentBestSchedule.computeMetric(Metrics.MAKESPAN) == schedule.computeMetric(Metrics.MAKESPAN)) &&
                (currentBestSchedule.computeMetric(Metrics.RM1) < schedule.computeMetric(Metrics.RM1)))        {
            return true;
        }

        return false;
    }
}
