package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

@Log4j2
@Service("RandomSolver")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class RandomSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations) {
        Schedule bestSchedule = null;
        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createScheduleProactive(benchmark, this.createRandomPriorityListRepresentation(benchmark));
            } catch (Exception e) {
                // ignore as it will be considered as worst result
            }
            if (bestSchedule == null || (schedule != null && bestSchedule.computeMetric(Metrics.MAKESPAN) > schedule.computeMetric(Metrics.MAKESPAN)))
                bestSchedule = schedule;
        }
        return bestSchedule;
    }

    private ActivityListSchemeRepresentation createRandomPriorityListRepresentation(Benchmark benchmark) throws NoNonRenewableResourcesLeftException {
        List<Job> activityScheduled = new ArrayList<>();
        List<Mode> modesScheduled = new ArrayList<>();

        List<Job> possibleJobs = new ArrayList<>();
        possibleJobs.add(benchmark.getProject().getJobs().get(0));

        Map<Resource, Integer> nonRenewableResourcesLeft = new HashMap<>();
        benchmark.getProject().getAvailableResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                nonRenewableResourcesLeft.put(resource, amount);
            }
        });

        // First schedule the activities
        while (!possibleJobs.isEmpty()) {
            // Get a random job/activity
            Collections.shuffle(possibleJobs);
            Job selectedJob = possibleJobs.get(0);

            // Add to representation
            activityScheduled.add(selectedJob);

            // Remove from list and add the possible successors
            possibleJobs.remove(selectedJob);

            selectedJob.getSuccessor().forEach(successorJob -> {
                Set<Job> successorsPredecessors = ProjectHelper.getPredecessorsOfJob(benchmark.getProject(), successorJob);
                // Check if all are already scheduled if yes, add them to possible succesors
                boolean possible = true;
                for (Job successorsPredecessor : successorsPredecessors) {
                    if (!activityScheduled.contains(successorsPredecessor))
                        possible = false;
                }

                if (possible && !activityScheduled.contains(successorJob))
                    possibleJobs.add(successorJob);
            });
        }

        // Second schedule the modes
        Map<Job, List<Mode>> reservation = ProjectHelper.getReservationOfNonRenewableResources(benchmark.getProject());
        Map<Resource, Integer> reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);

        for (Job selectedJob : activityScheduled) {
            List<Mode> possibleModes = new ArrayList<>(selectedJob.getModes());
            Map<Resource, Integer> finalReservedResources = reservedResources;

            possibleModes = possibleModes.stream()
                    .filter(possibleMode -> {
                        AtomicBoolean resourcesAvailable = new AtomicBoolean(true);
                        possibleMode.getRequestedResources().forEach((possibleRequestedResource, possibleRequestedAmount) -> {
                            if (possibleRequestedResource instanceof NonRenewableResource) {
                                // decreases the left amount with the reserved ones (if reserved)
                                int reservedResourcesAmount = finalReservedResources.getOrDefault(possibleRequestedResource, 0);
                                if (reservation.containsKey(selectedJob))
                                    reservedResourcesAmount = 0;

                                if (possibleRequestedAmount > nonRenewableResourcesLeft.get(possibleRequestedResource) - reservedResourcesAmount)
                                    resourcesAvailable.set(false);
                            } else if (possibleRequestedResource instanceof RenewableResource) {
                                if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                                    resourcesAvailable.set(false);
                            }
                        });
                        return resourcesAvailable.get();
                    })
                    .collect(Collectors.toList());

            // Select Mode (try to take the ones with the lowest)
            Collections.shuffle(possibleModes);
            if (possibleModes.isEmpty()) {
                throw new NoNonRenewableResourcesLeftException(selectedJob, nonRenewableResourcesLeft);
            }

            // Random select if requested amount is lower than reserved
            Mode selectedMode = possibleModes.get(0);

            selectedMode.getRequestedResources().forEach((scheduledModeResource, scheduledModeAmount) -> {
                Integer resourceLeftAmount = nonRenewableResourcesLeft.get(scheduledModeResource);
                if (resourceLeftAmount != null) {
                    nonRenewableResourcesLeft.put(scheduledModeResource, resourceLeftAmount - scheduledModeAmount);
                }
            });

            modesScheduled.add(selectedMode);

            reservation.remove(selectedJob);
            reservedResources = ProjectHelper.getReservationAmountOfNonRenewableResources(reservation);
        }

        return new ActivityListSchemeRepresentation(
                activityScheduled.stream().mapToInt(Job::getJobId).toArray(),
                modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }
}
