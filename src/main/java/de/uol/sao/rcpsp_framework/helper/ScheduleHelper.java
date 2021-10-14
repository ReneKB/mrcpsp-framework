package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.services.metrics.Metrics;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ScheduleHelper {

    public static ScheduleRelationInfo createScheduleRelationInfo(Schedule schedule) {
        ScheduleRelationInfo scheduleRelationInfo = new ScheduleRelationInfo();
        ScheduleRepresentation scheduleRepresentation = schedule.getScheduleRepresentation();
        List<JobMode> jobModeList = scheduleRepresentation.toJobMode(schedule.getBenchmark().getProject());
        Project project = schedule.getBenchmark().getProject();
        List<Job> jobs = project.getJobs();

        Map<Job, Integer> leastFinishingTime = scheduleRelationInfo.getLeastFinishingTime();
        Map<Job, Integer> leastStartingTime = scheduleRelationInfo.getLeastStartingTime();
        Map<Job, Integer> earliestFinishingTime = scheduleRelationInfo.getEarliestFinishingTime();
        Map<Job, Integer> earliestStartingTime = scheduleRelationInfo.getEarliestStartingTime();

        // Beginning job is always a dummy one
        leastFinishingTime.put(jobs.get(0), 0);
        leastStartingTime.put(jobs.get(0), 0);
        earliestFinishingTime.put(jobs.get(0), 0);
        earliestStartingTime.put(jobs.get(0), 0);

        // last Job is always a dummy one
        int makespan = schedule.computeMetric(Metrics.MAKESPAN) - 1;
        leastFinishingTime.put(jobs.get(jobs.size() - 1), makespan);
        leastStartingTime.put(jobs.get(jobs.size() - 1), makespan);
        earliestFinishingTime.put(jobs.get(jobs.size() - 1), makespan);
        earliestStartingTime.put(jobs.get(jobs.size() - 1), makespan);

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
                ending = Math.min(interval.getUpperBound(), ending);
                earliestFinishingTime.put(job, ending);
            }
        }

        // Computation of LST and LFT
        for (int i = project.getJobs().size() - 1; i > 0; i--) {
            Job job = project.getJobs().get(i);
            JobMode selectedMode = jobModeList.stream().filter(jobMode -> jobMode.getJob().getJobId() == job.getJobId()).findFirst().get();
            int duration = selectedMode.getMode().getDuration();

            int latestEndPoint = Integer.MAX_VALUE;
            List<Job> successorJobs = job.getSuccessor();
            if (successorJobs.isEmpty())
                latestEndPoint = makespan;
            else {
                // Get the minimum of the successors
                for (Job successorJob : successorJobs) {
                    latestEndPoint = Math.min(leastStartingTime.get(successorJob), latestEndPoint);
                }
            }

            int latestStartPoint = latestEndPoint - duration;
            leastStartingTime.put(job, latestStartPoint);
            leastFinishingTime.put(job, latestEndPoint);
        }

        return scheduleRelationInfo;
    }

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
}
