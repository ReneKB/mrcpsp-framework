package de.uol.sao.rcpsp_framework.heuristic.activities;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.exception.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exception.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSelection;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.SchedulePlanInfo;
import de.uol.sao.rcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import org.apache.commons.lang3.ArrayUtils;

import java.util.ArrayList;
import java.util.List;

public class LSTHeuristic extends ActivityHeuristic {

    @Override
    public double determineActivityPriorityValue(Activity activity, Mode jobSelectedMode, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        List<Activity> possibleScheduledActivities = new ArrayList<>(scheduledActivities);
        possibleScheduledActivities.add(activity);

        int priorityValue = 0;

        List<Mode> possibleScheduledModes = new ArrayList<>(scheduledModes);
        possibleScheduledModes.add(jobSelectedMode);

        int[] scheduledJobsArray = ArrayUtils.toPrimitive(possibleScheduledActivities.stream().map(Activity::getActivityId).toArray(Integer[]::new));
        int[] scheduledModesArray = ArrayUtils.toPrimitive(possibleScheduledModes.stream().map(Mode::getModeId).toArray(Integer[]::new));

        ScheduleRepresentation scheduleRepresentation = new ActivityListRepresentation(
            scheduledJobsArray,
            scheduledModesArray
        );

        try {
            Schedule partialSchedule = new SchedulerService().createSchedule(benchmark, scheduleRepresentation, null);
            SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(partialSchedule);

            int leastFinishedTime = schedulePlanInfo.getLatestFinishingTime().get(activity);
            priorityValue = Math.max(leastFinishedTime - jobSelectedMode.getDuration(), priorityValue);
        } catch (NoNonRenewableResourcesLeftException | RenewableResourceNotEnoughException e) {
            return Integer.MAX_VALUE;
        }

        return priorityValue;
    }

    public LSTHeuristic() {
        this.heuristicSelection = HeuristicSelection.MIN;
    }
}
