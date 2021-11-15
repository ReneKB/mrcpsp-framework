package de.uol.sao.rcpsp_framework.services.scheduler;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.SneakyThrows;
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
    public Schedule createScheduleProactive(Benchmark benchmark, ScheduleRepresentation execution, UncertaintyModel uncertaintyModel) throws NoNonRenewableResourcesLeftException, RenewableResourceNotEnoughException {
        Schedule schedule = new Schedule();
        Map<Resource, List<Interval>> resourcePlan = new HashMap<>();
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
            resourcePlan.put(resource, new ArrayList<>());
        });

        schedule.setBenchmark(benchmark);
        schedule.setResourcePlans(resourcePlan);
        schedule.setScheduleRepresentation(execution);

        // Iterating through the JobMode combinations
        for (JobMode jobMode : jobModeList) {
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

                    int finalUpperBound = determineUpperBound(modeDurations.get(jobMode), potentialLowerBound, currentModeResource, benchmark.getHorizon());

                    // potential new interval that needs to be checked
                    Interval potentialInterval = new Interval(potentialLowerBound,
                            finalUpperBound,
                            currentModeAmount,
                            jobMode);

                    int resourceAvailableGeneral = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval = resourceAvailableGeneral;

                    int earliestConflictEnding = benchmark.getHorizon();
                    // determine the actual resource availability on the given interval
                    for (Interval intervalToCheck : resourcePlan.get(currentModeResource)) {
                        boolean conflict = potentialInterval.conflictInterval(intervalToCheck);
                        if (conflict) {
                            resourceAvailableOnInterval -= intervalToCheck.getAmount();
                            earliestConflictEnding = Math.min(earliestConflictEnding, intervalToCheck.getUpperBound());
                        }
                    }

                    // Check if the schedule can be actually scheduled
                    if (currentModeAmount > resourceAvailableGeneral) {
                        throw new RenewableResourceNotEnoughException();
                    } else if (currentModeAmount > resourceAvailableOnInterval &&
                            currentModeResource instanceof NonRenewableResource) {
                        throw new NoNonRenewableResourcesLeftException(jobMode.getJob());
                    } else if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialLowerBound = earliestConflictEnding + 1;
                    }
                }
            }
            this.addInterval(jobMode, modeDurations.get(jobMode), resourcePlan, earliestStartTime, benchmark.getHorizon(), potentialLowerBound);
        }

        return schedule;
    }

    private void addInterval(JobMode jobMode,
                             int duration,
                             Map<Resource, List<Interval>> resourcePlan,
                             Map<Job, Integer> earliestStartTime,
                             int horizon,
                             int actualLowerBound) {
        Mode currentMode = jobMode.getMode();
        for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();

            int actualUpperBound = determineUpperBound(duration, actualLowerBound, resource, horizon);

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

    private int determineUpperBound(int duration, int lowerBound, Resource requestedResource, int horizon) {
        int finalUpperBound = lowerBound + duration - 1;
        if (requestedResource instanceof NonRenewableResource)
            finalUpperBound = horizon;
        return finalUpperBound;
    }

}
