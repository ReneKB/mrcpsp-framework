package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LFTHeuristic extends Heuristic {

    @Override
    int determinePriorityValue(Job job, Mode mode, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        int latestStartTime = 0;

        Map<Job, Integer> leastFinishingTime = new HashMap<>();
        Map<Job, Integer> leastStartingTime = new HashMap<>();

        if (scheduledJobs.size() > 0) {
            leastFinishingTime.put(scheduledJobs.get(0), 0);
            leastStartingTime.put(scheduledJobs.get(0), 0);
        }

        // Computation of LST and LFT
        ScheduleRepresentation currentRepresentation = new ActivityListSchemeRepresentation(
            scheduledJobs.stream().mapToInt(Job::getJobId).toArray(),
            scheduledModes.stream().mapToInt(Mode::getModeId).toArray()
        );

        try {
            Schedule schedule = new SchedulerService().createScheduleProactive(benchmark, currentRepresentation);
            ScheduleRelationInfo relationInfo = ScheduleHelper.createScheduleRelationInfo(schedule);
            System.out.println(relationInfo);
        } catch (NoNonRenewableResourcesLeftException e) {
            return Integer.MAX_VALUE;
        } catch (RenewableResourceNotEnoughException e) {
            return Integer.MAX_VALUE;
        }

        return 1;
    }

}
