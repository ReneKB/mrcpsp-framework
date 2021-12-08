package de.uol.sao.rcpsp_framework.services.scheduler;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Interval;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import lombok.Data;
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
     * @return
     */
    public Schedule createScheduleProactive(Benchmark benchmark, ScheduleRepresentation execution, UncertaintyModel uncertaintyModel) throws NoNonRenewableResourcesLeftException, RenewableResourceNotEnoughException {
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> schedulePlan = new HashMap<>();
        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        Map<Job, Integer> earliestStartTime = new HashMap<>();

        Map<JobMode, Integer> modeDurations = new HashMap<>();
        List<JobMode> jobModeList = execution.toJobMode(benchmark.getProject());
        for (int i = 0; i < jobModeList.size(); i++) {
            JobMode jobMode = jobModeList.get(i);
            boolean isDummyMode = i == 0 | i == jobModeList.size() - 1;
            modeDurations.put(jobMode, isDummyMode || uncertaintyModel == null ? jobMode.getMode().getDuration() : uncertaintyModel.computeActualDuration(jobMode.getMode().getDuration()));
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
        for (JobMode jobMode : jobModeList) {
            Mode currentMode = jobMode.getMode();

            // Create initial interval
            int potentialLowerBound = earliestStartTime.getOrDefault(jobMode.getJob(), 0);

            // Construct the solution according the execution
            boolean solutionFound = false;
            int steps = 0;
            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval;

                    if (currentModeResource instanceof RenewableResource) {
                        int potentialUpperBound = potentialLowerBound + modeDurations.get(jobMode) - 1;

                        // potential new interval that needs to be checked
                        Interval potentialInterval = new Interval(potentialLowerBound,
                                potentialUpperBound,
                                currentModeAmount,
                                jobMode);

                        resourceAvailableOnInterval = this.computeAvailableResourcesOnInterval(schedulePlan, currentModeResource, potentialInterval, resourceAvailableGeneral);
                    } else {
                        resourceAvailableOnInterval = nonRenewableResourcesLeft.get(currentModeResource);
                    }

                    if (currentModeAmount > resourceAvailableGeneral) {
                        throw new RenewableResourceNotEnoughException();
                    } else if (currentModeAmount > resourceAvailableOnInterval &&
                            currentModeResource instanceof NonRenewableResource) {
                        throw new NoNonRenewableResourcesLeftException(jobMode.getJob());
                    } else if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialLowerBound++;
                        steps++;
                        break;
                    }
                }
            }

            if (steps > 30)
                System.out.println("Practive: " + steps);

            this.addInterval(jobMode, modeDurations.get(jobMode), schedulePlan, nonRenewableResourcesLeft, earliestStartTime, potentialLowerBound);
        }

        return schedule;
    }

    /**
     * Creates a schedule according to the order of the given list.
     * @param forwardSchedule Feasible forward schedule
     * @return Feasible backward schedule
     */
    public Schedule createScheduleBackward(Schedule forwardSchedule) {
        long start = System.currentTimeMillis();
        Benchmark benchmark = forwardSchedule.getBenchmark();
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> resourcePlan = new HashMap<>();
        Map<Job, Integer> latestEndTime = new HashMap<>();

        Map<JobMode, Integer> modeDurations = new HashMap<>();
        List<JobMode> jobModeList = forwardSchedule.getScheduleRepresentation().toJobMode(benchmark.getProject());
        for (int i = 0; i < jobModeList.size(); i++) {
            JobMode jobMode = jobModeList.get(i);
            modeDurations.put(jobMode, jobMode.getMode().getDuration());
        }

        // Creates initial allocation map
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            resourcePlan.put(resource, new ArrayList<>());
        });

        schedule.setBenchmark(benchmark);
        schedule.setSchedulePlan(resourcePlan);
        schedule.setScheduleRepresentation(forwardSchedule.getScheduleRepresentation());

        List<JobMode> reversedList = jobModeList.subList(0, jobModeList.size());
        Collections.reverse(reversedList);

        int makespan = forwardSchedule.computeMetric(Metrics.MAKESPAN) - 1;
        Map<Job, Integer> earliestEndingTime = ScheduleHelper.getEarliestFinishingTime(forwardSchedule);

        // Iterating through the JobMode combinations
        for (JobMode jobMode : reversedList) {
            Mode currentMode = jobMode.getMode();

            // get upper bound acc. to forward schedule
            int earliestEndingTimeOfCurrentJob = earliestEndingTime.get(jobMode.getJob());
            int nextEarliestEndingTime = earliestEndingTime.values().stream().filter(integer -> integer > earliestEndingTimeOfCurrentJob).sorted().findFirst().orElse(makespan + 1) - 1;

            // Create initial interval
            int potentialUpperBound = Math.min(nextEarliestEndingTime, latestEndTime.getOrDefault(jobMode.getJob(), makespan));

            // Construct the solution according the execution
            boolean solutionFound = false;
            int steps = 0;
            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    if (currentModeResource instanceof NonRenewableResource)
                        continue; // Ignoring non renewable resources as expect forward schedule to be checked

                    int potentialLowerBound = determineLowerBound(modeDurations.get(jobMode), potentialUpperBound);

                    // potential new interval that needs to be checked
                    Interval potentialInterval = new Interval(potentialLowerBound,
                            potentialUpperBound,
                            currentModeAmount,
                            jobMode);

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval = this.computeAvailableResourcesOnInterval(resourcePlan, currentModeResource, potentialInterval, resourceAvailableGeneral);

                    // Check if the schedule can be actually scheduled
                    if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialUpperBound--;
                        steps++;
                        break;
                    }
                }
            }

            if (steps > 10)
                System.out.println("Backward: " + steps);

            this.addIntervalBackward(benchmark.getProject(), jobMode, modeDurations.get(jobMode), resourcePlan, latestEndTime, makespan, potentialUpperBound);
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

    private void addInterval(JobMode jobMode,
                             int duration,
                             Map<Resource, List<Interval>> resourcePlan,
                             Map<Resource, Integer> nonRenewableResourcesLeft,
                             Map<Job, Integer> earliestStartTime,
                             int actualLowerBound) {
        Mode currentMode = jobMode.getMode();
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
                        jobMode);

                // Add to the resource plan
                List<Interval> intervals = resourcePlan.get(resource);
                intervals.add(newInterval);

                // Only renewable should be considered as NonRenewable are occupied til the horizon
                if (resource instanceof RenewableResource) {
                    for (Job successorJob : jobMode.getJob().getSuccessor()) {
                        earliestStartTime.put(successorJob, Math.max(earliestStartTime.getOrDefault(successorJob, 0), newInterval.getUpperBound() + 1));
                    }
                }
            }
        }
    }

    private void addIntervalBackward(Project project,
                                     JobMode jobMode,
                                     int duration,
                                     Map<Resource, List<Interval>> resourcePlan,
                                     Map<Job, Integer> latestEndTime,
                                     int makespan,
                                     int actualUpperBound) {
        Mode currentMode = jobMode.getMode();
        for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();

            int actualLowerBound = determineLowerBound(duration, actualUpperBound);

            Interval newInterval = new Interval(actualLowerBound,
                    actualUpperBound,
                    amount,
                    jobMode);

            // Add to the resource plan
            List<Interval> intervals = resourcePlan.get(resource);
            intervals.add(newInterval);

            // Only renewable should be considered as NonRenewable are occupied til the horizon
            if (resource instanceof RenewableResource) {
                for (Job predecessorJob : ProjectHelper.getPredecessorsOfJob(project, jobMode.getJob())) {
                    latestEndTime.put(predecessorJob, Math.min(latestEndTime.getOrDefault(predecessorJob, makespan), newInterval.getLowerBound() - 1));
                }
            }
        }
    }

    private int determineLowerBound(int duration, int upperBound) {
        return upperBound - duration + 1;
    }

    @Data
    class AvailableResourceAndBound {
        int availableResources;
        int greatestLowerBound;
        int leastUpperBound;
    }
}
