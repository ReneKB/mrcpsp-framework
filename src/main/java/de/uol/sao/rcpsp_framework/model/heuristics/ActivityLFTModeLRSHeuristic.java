package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.model.benchmark.*;

import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

public class ActivityLFTModeLRSHeuristic extends Heuristic {

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


        double sumNonRenewableResources = 0;
        for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
            Resource resource = entry.getKey();
            Integer amount = entry.getValue();
            if (resource instanceof NonRenewableResource) {
                if (amount != 0) {
                    sumNonRenewableResources += (double) amount / nonRenewableResourcesLeft.get(resource);
                }
            }
        }

        if (Double.isInfinite(sumNonRenewableResources) || sumNonRenewableResources < 0)
            sumNonRenewableResources = Double.MAX_VALUE;

        return sumNonRenewableResources;
    }
}
