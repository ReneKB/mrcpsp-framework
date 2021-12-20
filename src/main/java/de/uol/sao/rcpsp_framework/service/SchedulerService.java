package de.uol.sao.rcpsp_framework.service;

import de.uol.sao.rcpsp_framework.exception.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exception.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.*;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Interval;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@Log4j2
public class SchedulerService {

    /**
     * Creates a schedule according to the order of the given list.
     * @param benchmark Benchmark of concern
     * @param execution List of all required executions
     * @return Feasible forwarding schedule
     */
    public Schedule createSchedule(Benchmark benchmark, ScheduleRepresentation execution, UncertaintyModel uncertaintyModel) throws NoNonRenewableResourcesLeftException, RenewableResourceNotEnoughException {
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> schedulePlan = new HashMap<>();
        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        Map<Activity, Integer> earliestStartTime = new HashMap<>();

        Map<ActivityMode, Integer> modeDurations = new HashMap<>();
        List<ActivityMode> activityModeList = execution.toActivityModeList(benchmark.getProject());
        for (int i = 0; i < activityModeList.size(); i++) {
            ActivityMode activityMode = activityModeList.get(i);
            boolean isDummyMode = i == 0 | i == activityModeList.size() - 1;
            modeDurations.put(activityMode, isDummyMode || uncertaintyModel == null ? activityMode.getMode().getDuration() : uncertaintyModel.computeActualDuration(activityMode.getMode().getDuration()));
        }

        // Creates initial allocation map
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource)
                nonRenewableResourcesLeft.put(resource, amount);
            else
                schedulePlan.put(resource, new ArrayList<>());
        });

        schedule.setBenchmark(benchmark);
        schedule.setSchedulePlan(schedulePlan);
        schedule.setScheduleRepresentation(execution);

        // Iterating through the JobMode combinations
        for (ActivityMode activityMode : activityModeList) {
            Mode currentMode = activityMode.getMode();

            // Create initial interval
            int potentialLowerBound = earliestStartTime.getOrDefault(activityMode.getActivity(), 0);

            // Construct the solution according the execution
            boolean solutionFound = false;
            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval;

                    if (currentModeResource instanceof RenewableResource) {
                        int potentialUpperBound = potentialLowerBound + modeDurations.get(activityMode) - 1;

                        // potential new interval that needs to be checked
                        Interval potentialInterval = new Interval(potentialLowerBound,
                                potentialUpperBound,
                                currentModeAmount,
                                activityMode);

                        resourceAvailableOnInterval = this.computeAvailableResourcesOnInterval(schedulePlan, currentModeResource, potentialInterval, resourceAvailableGeneral);
                    } else {
                        resourceAvailableOnInterval = nonRenewableResourcesLeft.get(currentModeResource);
                    }

                    if (currentModeAmount > resourceAvailableGeneral) {
                        throw new RenewableResourceNotEnoughException();
                    } else if (currentModeAmount > resourceAvailableOnInterval &&
                            currentModeResource instanceof NonRenewableResource) {
                        throw new NoNonRenewableResourcesLeftException(activityMode.getActivity());
                    } else if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialLowerBound++;
                        break;
                    }
                }
            }

            this.addInterval(activityMode, modeDurations.get(activityMode), schedulePlan, nonRenewableResourcesLeft, earliestStartTime, potentialLowerBound);
        }

        return schedule;
    }

    /**
     * Creates a schedule according to the order of the given list.
     * @param forwardSchedule Feasible forward schedule
     * @return Feasible backward schedule
     */
    public Schedule createScheduleBackward(Schedule forwardSchedule) {
        Benchmark benchmark = forwardSchedule.getBenchmark();
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> resourcePlan = new HashMap<>();
        Map<Activity, Integer> latestEndTime = new HashMap<>();

        Map<ActivityMode, Integer> modeDurations = new HashMap<>();
        List<ActivityMode> activityModeList = forwardSchedule.getScheduleRepresentation().toActivityModeList(benchmark.getProject());
        for (ActivityMode activityMode : activityModeList) {
            modeDurations.put(activityMode, activityMode.getMode().getDuration());
        }

        // Creates initial allocation map
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> resourcePlan.put(resource, new ArrayList<>()));

        schedule.setBenchmark(benchmark);
        schedule.setSchedulePlan(resourcePlan);
        schedule.setScheduleRepresentation(forwardSchedule.getScheduleRepresentation());

        List<ActivityMode> reversedList = activityModeList.subList(0, activityModeList.size());
        Collections.reverse(reversedList);

        int makespan = forwardSchedule.computeMetric(Metrics.MAKESPAN) - 1;
        Map<Activity, Integer> earliestEndingTime = ScheduleHelper.getEarliestFinishingTime(forwardSchedule);

        // Iterating through the JobMode combinations
        for (ActivityMode activityMode : reversedList) {
            Mode currentMode = activityMode.getMode();

            // get upper bound acc. to forward schedule
            int earliestEndingTimeOfCurrentJob = earliestEndingTime.get(activityMode.getActivity());
            int nextEarliestEndingTime = earliestEndingTime.values().stream().filter(integer -> integer > earliestEndingTimeOfCurrentJob).sorted().findFirst().orElse(makespan + 1) - 1;

            // Create initial interval
            int potentialUpperBound = Math.min(nextEarliestEndingTime, latestEndTime.getOrDefault(activityMode.getActivity(), makespan));

            // Construct the solution according the execution
            boolean solutionFound = false;
            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    if (currentModeResource instanceof NonRenewableResource)
                        continue; // Ignoring non renewable resources as expect forward schedule to be checked

                    int potentialLowerBound = determineLowerBound(modeDurations.get(activityMode), potentialUpperBound);

                    // potential new interval that needs to be checked
                    Interval potentialInterval = new Interval(potentialLowerBound,
                            potentialUpperBound,
                            currentModeAmount,
                            activityMode);

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval = this.computeAvailableResourcesOnInterval(resourcePlan, currentModeResource, potentialInterval, resourceAvailableGeneral);

                    // Check if the schedule can be actually scheduled
                    if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialUpperBound--;
                        break;
                    }
                }
            }

            this.addIntervalBackward(benchmark.getProject(), activityMode, modeDurations.get(activityMode), resourcePlan, latestEndTime, makespan, potentialUpperBound);
        }

        return schedule;
    }

    private int computeAvailableResourcesOnInterval(Map<Resource, List<Interval>> scheduledResourcePlan,
                                                    Resource currentModeResource,
                                                    Interval potentialInterval,
                                                    int resourceAvailableGeneral) {
        int resourceAvailableOnInterval = resourceAvailableGeneral;
        List<Interval> conflictingIntervals = new ArrayList<>();

        // determine the actual resource availability on the given interval
        for (Interval intervalToCheck : scheduledResourcePlan.get(currentModeResource)) {
            if (potentialInterval.conflictInterval(intervalToCheck)) {
                conflictingIntervals.add(intervalToCheck);
            }
        }

        // Calculate highest available resource at every timepoint
        for (int i = potentialInterval.getLowerBound(); i <= potentialInterval.getUpperBound(); i++) {
            int finalI = i;
            List<Interval> conflictingIntervalAtTimeslot = conflictingIntervals.stream().filter(interval -> interval.valueInInterval(finalI)).collect(Collectors.toList());
            int availableAtTimeslot = resourceAvailableGeneral - conflictingIntervalAtTimeslot.stream().map(Interval::getAmount).reduce((Integer::sum)).orElse(0);
            resourceAvailableOnInterval = Math.min(resourceAvailableOnInterval, availableAtTimeslot);

        }

        return resourceAvailableOnInterval;
    }

    private void addInterval(ActivityMode activityMode,
                             int duration,
                             Map<Resource, List<Interval>> resourcePlan,
                             Map<Resource, Integer> nonRenewableResourcesLeft,
                             Map<Activity, Integer> earliestStartTime,
                             int actualLowerBound) {
        Mode currentMode = activityMode.getMode();
        for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();

            if (resource instanceof NonRenewableResource)
                nonRenewableResourcesLeft.put(resource, nonRenewableResourcesLeft.get(resource) - amount);
            else {
                int actualUpperBound = actualLowerBound + duration - 1;

                Interval newInterval = new Interval(actualLowerBound,
                        actualUpperBound,
                        amount,
                        activityMode);

                // Add to the resource plan
                List<Interval> intervals = resourcePlan.get(resource);
                intervals.add(newInterval);

                // Only renewable should be considered as NonRenewable are occupied til the horizon
                if (resource instanceof RenewableResource) {
                    for (Activity successorActivity : activityMode.getActivity().getSuccessors()) {
                        earliestStartTime.put(successorActivity, Math.max(earliestStartTime.getOrDefault(successorActivity, 0), newInterval.getUpperBound() + 1));
                    }
                }
            }
        }
    }

    private void addIntervalBackward(Project project,
                                     ActivityMode activityMode,
                                     int duration,
                                     Map<Resource, List<Interval>> resourcePlan,
                                     Map<Activity, Integer> latestEndTime,
                                     int makespan,
                                     int actualUpperBound) {
        Mode currentMode = activityMode.getMode();
        for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();

            int actualLowerBound = determineLowerBound(duration, actualUpperBound);

            Interval newInterval = new Interval(actualLowerBound,
                    actualUpperBound,
                    amount,
                    activityMode);

            // Add to the resource plan
            List<Interval> intervals = resourcePlan.get(resource);
            intervals.add(newInterval);

            // Only renewable should be considered as NonRenewable are occupied til the horizon
            if (resource instanceof RenewableResource) {
                for (Activity predecessorActivity : ProjectHelper.getPredecessorsOfJob(project, activityMode.getActivity())) {
                    latestEndTime.put(predecessorActivity, Math.min(latestEndTime.getOrDefault(predecessorActivity, makespan), newInterval.getLowerBound() - 1));
                }
            }
        }
    }

    private int determineLowerBound(int duration, int upperBound) {
        return upperBound - duration + 1;
    }

}
