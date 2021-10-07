package de.uol.sao.rcpsp_framework.services.scheduler;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.NonRenewableResource;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.scheduling.Interval;
import de.uol.sao.rcpsp_framework.model.scheduling.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
public class SchedulerService {

    /**
     * Creates a schedule according to the order of the given list.
     * @param benchmark Benchmark of concern
     * @param execution List of all required executions
     * @return
     */
    public Schedule createSchedule(Benchmark benchmark, List<JobMode> execution) {
        Schedule schedule = new Schedule();
        schedule.setBenchmark(benchmark);

        // TODO: Validity check (all jobs executed ONCE? order kept? )

        JobMode jobMode1 = new JobMode(benchmark.getProject().getJobs().get(0), benchmark.getProject().getJobs().get(0).getModes().get(0));
        JobMode jobMode2 = new JobMode(benchmark.getProject().getJobs().get(1), benchmark.getProject().getJobs().get(1).getModes().get(1));
        JobMode jobMode3 = new JobMode(benchmark.getProject().getJobs().get(2), benchmark.getProject().getJobs().get(2).getModes().get(0));
        JobMode jobMode4 = new JobMode(benchmark.getProject().getJobs().get(3), benchmark.getProject().getJobs().get(3).getModes().get(0));
        JobMode jobMode5 = new JobMode(benchmark.getProject().getJobs().get(4), benchmark.getProject().getJobs().get(4).getModes().get(0));
        JobMode jobMode6 = new JobMode(benchmark.getProject().getJobs().get(5), benchmark.getProject().getJobs().get(5).getModes().get(0));
        JobMode jobMode7 = new JobMode(benchmark.getProject().getJobs().get(6), benchmark.getProject().getJobs().get(6).getModes().get(0));
        JobMode jobMode8 = new JobMode(benchmark.getProject().getJobs().get(7), benchmark.getProject().getJobs().get(7).getModes().get(2));
        JobMode jobMode9 = new JobMode(benchmark.getProject().getJobs().get(8), benchmark.getProject().getJobs().get(8).getModes().get(2));
        JobMode jobMode10 = new JobMode(benchmark.getProject().getJobs().get(9), benchmark.getProject().getJobs().get(9).getModes().get(0));
        JobMode jobMode11 = new JobMode(benchmark.getProject().getJobs().get(10), benchmark.getProject().getJobs().get(10).getModes().get(0));
        JobMode jobMode12 = new JobMode(benchmark.getProject().getJobs().get(11), benchmark.getProject().getJobs().get(11).getModes().get(0));
        execution.add(jobMode1);
        execution.add(jobMode2);
        execution.add(jobMode3);
        execution.add(jobMode4);
        execution.add(jobMode5);
        execution.add(jobMode6);
        execution.add(jobMode7);
        execution.add(jobMode8);
        execution.add(jobMode9);
        execution.add(jobMode10);
        execution.add(jobMode11);
        execution.add(jobMode12);

        Map<Resource, List<Interval>> resourcePlan = new HashMap<>();
        schedule.setResourcePlans(resourcePlan);

        // Creates initial allocation map
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            resourcePlan.put(resource, new ArrayList<>());
        });

        // prepare allocation map
        for (JobMode jobMode : execution) {
            Mode currentMode = jobMode.getMode();

            // Create initial interval
            int potentialLowerBound = 0;

            // TODO: Ensure that the potential interval can be run at the same time with all required resources

            // TODO: Dealing with resource requests greater than offered
            boolean solutionFound = false;

            while (!solutionFound) {
                solutionFound = true;
                for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                    Resource currentModeResource = entry.getKey();
                    Integer currentModeAmount = entry.getValue();

                    // potential new interval that needs to be checked
                    Interval potentialInterval = new Interval(potentialLowerBound,
                            potentialLowerBound + currentMode.getDuration() - 1,
                            currentModeAmount,
                            jobMode);

                    int resourceAvailable = benchmark.getProject().getAvailableResources().get(currentModeResource);
                    int resourceAvailableOnInterval = resourceAvailable;

                    if (currentModeResource instanceof NonRenewableResource) {
                        for (Interval intervalToCheck : resourcePlan.get(currentModeResource)) {
                            resourceAvailableOnInterval -= intervalToCheck.getAmount();
                        }
                    } else {
                        for (Interval intervalToCheck : resourcePlan.get(currentModeResource)) {
                            boolean conflict = potentialInterval.conflictInterval(intervalToCheck);
                            if (conflict)
                                resourceAvailableOnInterval -= potentialInterval.getAmount();
                        }
                    }

                    if (currentModeAmount > resourceAvailable) {
                        throw new RuntimeException("Unsolvable (RenewableResource) @: " + jobMode);
                    } else if (currentModeAmount > resourceAvailableOnInterval &&
                               currentModeResource instanceof NonRenewableResource) {
                        throw new RuntimeException("Unsolvable (NonRenewableResource) @: " + jobMode);
                    } else if (resourceAvailableOnInterval - currentModeAmount < 0) {
                        solutionFound = false;
                        potentialLowerBound++;
                    }
                }


                // Check if match globally and get the new possible solution
            }

            int finalPotentialLowerBound = potentialLowerBound;
            currentMode.getRequestedResources().forEach((resource, amount) -> {
                Interval newInterval = new Interval(finalPotentialLowerBound,
                        finalPotentialLowerBound + currentMode.getDuration() - 1,
                    amount,
                    jobMode);

                // Add to the resource plan
                List<Interval> intervals = resourcePlan.get(resource);
                intervals.add(newInterval);

            });
        }

        return schedule;
    }

}
