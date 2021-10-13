package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.JobMode;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

public class BenchmarkHelper {

    public static Optional<Job> getJobFromBenchmark(Project project, int jobId) {
        return project.getJobs().stream().filter(job -> job.getJobId() == jobId).findFirst();
    }

    public static Optional<Mode> getModeFromJob(Job job, int modeId) {
        return job.getModes().stream().filter(mode -> mode.getModeId() == modeId).findFirst();
    }

    public static Set<Job> getPredecessorsOfJob(Project project, Job job) {
        Set<Job> jobs = new HashSet<>();
        project.getJobs().forEach(possiblePredecessor -> {
            Optional<Job> possiblePredecessorOptional = possiblePredecessor.getSuccessor()
                .stream()
                .filter(job2 -> job2.getJobId() == job.getJobId())
                .findFirst();
            if (possiblePredecessorOptional.isPresent())
                jobs.add(possiblePredecessor);
        });
        return jobs;
    }

    /**
     * Some benchmarks mandatory requires non-renewable resources as there is no mode alternative in an activity.
     * Solvers might need information about these Modes and need to be executed these.
     * @return Map of all reserved jobs including the modes
     */
    public static Map<Job, List<Mode>> getReservationOfNonRenewableResources(Project project) {
        Map<Job, List<Mode>> reservations = new HashMap<>();
        project.getJobs().forEach(job -> {
            Set<Mode> possiblesModes = new HashSet<>(job.getModes());

            for (Mode mode : job.getModes()) {
                for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
                    Resource requestedResource = entry.getKey();
                    Integer requestedResourceAmount = entry.getValue();
                    Integer actualAmount = project.getAvailableResources().get(requestedResource);
                    if (actualAmount < requestedResourceAmount)
                        possiblesModes.remove(mode);
                }
            }

            // Now check if the possible modes are possible to be executed without non-renewable resources. If not, some reservation step required!
            Set<Mode> modesWithoutNonRenewableResources = possiblesModes.stream().dropWhile(mode -> {
                int requiredNonRenewableResources = Integer.MAX_VALUE;
                for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
                    Resource resource = entry.getKey();
                    Integer resourceAmount = entry.getValue();
                    if (resource instanceof NonRenewableResource)
                        requiredNonRenewableResources = Math.min(requiredNonRenewableResources, resourceAmount);
                }

                return requiredNonRenewableResources != Integer.MAX_VALUE && requiredNonRenewableResources != 0;
            }).collect(Collectors.toSet());

            if (modesWithoutNonRenewableResources.isEmpty()) {
                possiblesModes.forEach(mode -> {
                    List<Mode> reservationModes = reservations.getOrDefault(job, new ArrayList<>());
                    reservationModes.add(mode);
                    reservations.put(job, reservationModes);
                });
            }
        });
        return reservations;
    }

    public static Map<Resource, Integer> getReservationAmountOfNonRenewableResources(Map<Job, List<Mode>> reservations) {
        Map<Resource, Integer> reservationsAmount = new HashMap<>();
        for (Map.Entry<Job, List<Mode>> entry : reservations.entrySet()) {
            Job job = entry.getKey();
            List<Mode> modes = entry.getValue();

            Map<Resource, Integer> jobAmount = new HashMap<>();
            for (Mode mode : modes) {
                mode.getRequestedResources().forEach((resource, amount) -> {
                    if (resource instanceof NonRenewableResource) {
                        jobAmount.put(resource, Math.max(jobAmount.getOrDefault(resource, 0), amount));
                    }
                });
            }

            for (Map.Entry<Resource, Integer> e : jobAmount.entrySet()) {
                Resource reservedResource = e.getKey();
                Integer value = e.getValue();

                int reservedAmount = reservationsAmount.getOrDefault(reservedResource, 0) + value;
                reservationsAmount.put(reservedResource, reservedAmount);
            }
        }

        return reservationsAmount;
    }
}
