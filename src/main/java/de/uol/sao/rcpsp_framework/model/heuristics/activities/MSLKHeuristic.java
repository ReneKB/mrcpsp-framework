package de.uol.sao.rcpsp_framework.model.heuristics.activities;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRelationInfo;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import org.apache.commons.lang3.ArrayUtils;

import java.util.ArrayList;
import java.util.List;

public class MSLKHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Job job, Mode jobSelectedMode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        List<Job> possibleScheduledJobs = new ArrayList<>(scheduledJobs);
        possibleScheduledJobs.add(job);

        int priorityValue = 0;

        int duration = jobSelectedMode.getDuration();

        List<Mode> possibleScheduledModes = new ArrayList<>(scheduledModes);
        possibleScheduledModes.add(jobSelectedMode);

        int[] scheduledJobsArray = ArrayUtils.toPrimitive(possibleScheduledJobs.stream().map(Job::getJobId).toArray(Integer[]::new));
        int[] scheduledModesArray = ArrayUtils.toPrimitive(possibleScheduledModes.stream().map(Mode::getModeId).toArray(Integer[]::new));

        ScheduleRepresentation scheduleRepresentation = new ActivityListSchemeRepresentation(
            scheduledJobsArray,
            scheduledModesArray
        );

        try {
            Schedule partialSchedule = new SchedulerService().createScheduleProactive(benchmark, scheduleRepresentation, null);
            ScheduleRelationInfo scheduleRelationInfo = ScheduleHelper.createScheduleRelationInfo(partialSchedule);

            int leastFinishedTime = scheduleRelationInfo.getLeastFinishingTime().get(job);
            int earliestFinishedTime = scheduleRelationInfo.getEarliestFinishingTime().get(job);
            priorityValue = Math.max(leastFinishedTime - earliestFinishedTime, priorityValue);
        } catch (NoNonRenewableResourcesLeftException e) {
            return Integer.MAX_VALUE;
        } catch (RenewableResourceNotEnoughException e) {
            return Integer.MAX_VALUE;
        }

        return priorityValue;
    }

    public MSLKHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
