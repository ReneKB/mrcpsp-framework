package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.model.benchmark.*;

import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

public class ActivityLFTModeLTRUHeuristic extends Heuristic {

    @Override
    double determineActivityPriorityValue(Job job, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        return new Random().nextInt(1000);
    }

    @Override
    double determineModePriorityValue(Job job,
                                   Mode mode,
                                   List<Job> scheduledJobs,
                                   List<Mode> scheduledModes,
                                   Map<Job, List<Mode>> reservation,
                                   Map<Resource, Integer> reservedResources,
                                   Map<Resource, Integer> nonRenewableResourcesLeft,
                                   Benchmark benchmark) {
        AtomicInteger sumNonRenewableResources = new AtomicInteger();
        mode.getRequestedResources().forEach((resource, amount) -> {
            if (resource instanceof NonRenewableResource) {
                sumNonRenewableResources.addAndGet(amount);
            }
        });

        return sumNonRenewableResources.get();
    }
}
