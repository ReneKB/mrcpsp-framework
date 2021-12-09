package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.exception.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exception.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.ScheduleRelationInfo;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import org.apache.commons.lang3.ArrayUtils;

import java.util.ArrayList;
import java.util.List;

public class LFTHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, Mode jobSelectedMode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        List<Job> possibleScheduledJobs = new ArrayList<>(scheduledJobs);
        possibleScheduledJobs.add(job);

        int priorityValue = 0;

        List<Mode> possibleScheduledModes = new ArrayList<>(scheduledModes);
        possibleScheduledModes.add(jobSelectedMode);

        int[] scheduledJobsArray = ArrayUtils.toPrimitive(possibleScheduledJobs.stream().map(Job::getJobId).toArray(Integer[]::new));
        int[] scheduledModesArray = ArrayUtils.toPrimitive(possibleScheduledModes.stream().map(Mode::getModeId).toArray(Integer[]::new));

        ScheduleRepresentation scheduleRepresentation = new ActivityListSchemeRepresentation(
            scheduledJobsArray,
            scheduledModesArray
        );

        try {
            Schedule partialSchedule = new SchedulerService().createSchedule(benchmark, scheduleRepresentation, null);
            ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(partialSchedule);

            int leastFinishedTime = scheduleRelationInfo.getLatestFinishingTime().get(job);
            priorityValue = Math.max(leastFinishedTime, priorityValue);
        } catch (NoNonRenewableResourcesLeftException e) {
            return Integer.MAX_VALUE;
        } catch (RenewableResourceNotEnoughException e) {
            return Integer.MAX_VALUE;
        }

        return priorityValue;
    }

    public LFTHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
