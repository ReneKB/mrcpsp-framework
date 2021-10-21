package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.*;
import lombok.extern.log4j.Log4j2;

import java.util.*;
import java.util.stream.Collectors;

/**
 * The project helper containing helpful functions which are related to jobs and resources of a project
 */
@Log4j2
public class ProjectHelper {

    /**
     * Get a job from the project
     * @param project The project of relevance
     * @param jobId The jobId that should be fetched
     * @return (Optional) job of project as object
     */
    public static Optional<Job> getJobFromProject(Project project, int jobId) {
        return project.getJobs().stream().filter(job -> job.getJobId() == jobId).findFirst();
    }

    /**
     * Get a mode according to the modeId from a Job
     * @param job The job of relevance
     * @param modeId The modeId that should be fetched
     * @return (Optional) mode of the job as object
     */
    public static Optional<Mode> getModeFromJob(Job job, int modeId) {
        return job.getModes().stream().filter(mode -> mode.getModeId() == modeId).findFirst();
    }

    /**
     * Get the direct predecessors of a job
     * @param project The project containing all jobs
     * @param job The job of relevance
     * @return A set of direct predecessors of a job
     */
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
     *
     * @param project The project containing all jobs
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

    /**
     * Get the amount of non-renewable resources reservation.
     * @param reservations The reservation map
     * @return Map containing the resource with its amount of reservation
     */
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

    /**
     * Get the depth of a job.
     * @param project Project including all jobs
     * @param job The job of relevance
     * @param currentDepth The current depth (used due recursion behaviour)
     * @return The depth of the relevant job
     */
    public static int getDepthOfJob(Project project, Job job, int currentDepth) {
        Set<Job> directPredecessors = ProjectHelper.getPredecessorsOfJob(project, job);
        if (directPredecessors.isEmpty())
            return currentDepth;

        int maxPredecessor = 0;
        for (Job directPredecessor : directPredecessors) {
            maxPredecessor = Math.max(maxPredecessor, ProjectHelper.getDepthOfJob(project, directPredecessor, currentDepth + 1));
        }

        return maxPredecessor;
    }

    /**
     * Get all available Jobs where the already scheduled jobs holds
     * @param project Project
     * @param alreadyScheduledJobs The current scheduled jobs which is necessary to determine the new states
     * @return
     */
    public static Set<Job> getAvailableJobs(Project project, List<Job> alreadyScheduledJobs) {
        Set<Job> availableJobs = project.getJobs().stream().filter(job -> alreadyScheduledJobs.containsAll(ProjectHelper.getPredecessorsOfJob(project, job))).collect(Collectors.toSet());
        availableJobs.removeAll(alreadyScheduledJobs);
        return availableJobs;
    }
}
