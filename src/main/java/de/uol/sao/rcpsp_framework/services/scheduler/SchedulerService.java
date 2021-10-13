package de.uol.sao.rcpsp_framework.services.scheduler;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.Interval;
import de.uol.sao.rcpsp_framework.model.scheduling.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRepresentation;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@Log4j2
public class SchedulerService {

    /**
     * Creates a schedule according to the order of the given list.
     * @param benchmark Benchmark of concern
     * @param execution List of all required executions
     * @return
     */
    public Schedule createSchedule(Benchmark benchmark, ScheduleRepresentation execution) {
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> resourcePlan = new HashMap<>();
        Map<Job, Integer> earliestStartTime = new HashMap<>();

        // Creates initial allocation map
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            resourcePlan.put(resource, new ArrayList<>());
        });

        schedule.setBenchmark(benchmark);
        schedule.setResourcePlans(resourcePlan);
        schedule.setScheduleRepresentation(execution);

        // Iterating through the JobMode combinations
        for (JobMode jobMode : execution.toJobMode(benchmark.getProject())) {
            Mode currentMode = jobMode.getMode();

            // Create initial interval
            int potentialLowerBound = earliestStartTime.getOrDefault(jobMode.getJob(), 0);

            // Construct the solution according the execution
            boolean solutionFound = false;
            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    int finalUpperBound = determineUpperBound(currentMode, potentialLowerBound, currentModeResource, benchmark.getHorizon());

                    // potential new interval that needs to be checked
                    Interval potentialInterval = new Interval(potentialLowerBound,
                            finalUpperBound,
                            currentModeAmount,
                            jobMode);

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval = resourceAvailableGeneral;

                    // determine the actual resource availability on the given interval
                    for (Interval intervalToCheck : resourcePlan.get(currentModeResource)) {
                        boolean conflict = potentialInterval.conflictInterval(intervalToCheck);
                        if (conflict)
                            resourceAvailableOnInterval -= intervalToCheck.getAmount();
                    }

                    // Check if the schedule can be actually scheduled
                    if (currentModeAmount > resourceAvailableGeneral) {
                        throw new RuntimeException("Unsolvable (RenewableResource) @: " + jobMode);
                    } else if (currentModeAmount > resourceAvailableOnInterval &&
                            currentModeResource instanceof NonRenewableResource) {
                        throw new RuntimeException("Unsolvable (NonRenewableResource) @: " + jobMode);
                    } else if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialLowerBound++;
                    }

                    // Check if match globally and get the new possible solution
                    if (solutionFound) {
                        for (Map.Entry<Resource, List<Interval>> resourceListEntry : resourcePlan.entrySet()) {
                            Resource resource = entry.getKey();
                            List<Interval> intervals = resourceListEntry.getValue();

                            if (resource instanceof RenewableResource) {
                                // Only take a look at the "other" renewable resources
                                boolean alreadyConsidered = false;
                                for (Resource alreadyConsideredResource : currentMode.getRequestedResources().keySet()) {
                                    if (alreadyConsideredResource.toString().equals(resource.toString())) {
                                        alreadyConsidered = true;
                                        break;
                                    }
                                }

                                if (!alreadyConsidered) {
                                    for (Interval interval : intervals) {
                                        if (interval.conflictInterval(potentialInterval)) {
                                            solutionFound = false;
                                            potentialLowerBound++;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            this.addInterval(jobMode, resourcePlan, earliestStartTime, benchmark.getHorizon(), potentialLowerBound);
        }

        return schedule;
    }

    private void addInterval(JobMode jobMode,
                             Map<Resource, List<Interval>> resourcePlan,
                             Map<Job, Integer> earliestStartTime,
                             int horizon,
                             int actualLowerBound) {
        Mode currentMode = jobMode.getMode();
        for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();

            int actualUpperBound = determineUpperBound(currentMode, actualLowerBound, resource, horizon);

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

    private int determineUpperBound(Mode currentMode, int lowerBound, Resource requestedResource, int horizon) {
        int finalUpperBound = lowerBound + currentMode.getDuration() - 1;
        if (requestedResource instanceof NonRenewableResource)
            finalUpperBound = horizon;
        return finalUpperBound;
    }

}
