package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.benchmark.model.*;
import de.uol.sao.rcpsp_framework.representation.JobMode;
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
     * Get all predecessors of a job
     * @param project The project containing all jobs
     * @param job The job of relevance
     * @return A set of direct predecessors of a job
     */
    public static Set<Job> getAllPredecessorsOfJob(Project project, Job job) {
        Set<Job> jobs = new HashSet<>();

        for (Job predecessor : ProjectHelper.getPredecessorsOfJob(project, job)) {
            jobs.addAll(new HashSet<>(ProjectHelper.getAllPredecessorsOfJob(project, predecessor)));
        }

        jobs.addAll(ProjectHelper.getPredecessorsOfJob(project, job));
        return jobs;
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

    public static Benchmark getDeepCopyOfBenchmark(Benchmark benchmark) {
        Benchmark deepBenchmark = new Benchmark();
        Project deepProject = new Project();
        List<Job> deepActivities = new ArrayList<>();

        deepBenchmark.setName(benchmark.getName());
        deepBenchmark.setHorizon(benchmark.getHorizon());
        deepBenchmark.setNumberJobs(benchmark.getNumberJobs());
        deepBenchmark.setProject(deepProject);

        deepProject.setAvailableResources(new HashMap<>(benchmark.getProject().getAvailableResources()));
        deepProject.setProjectId(benchmark.getProject().getProjectId());
        deepProject.setJobs(deepActivities);

        // Deep copy
        for (Job job : benchmark.getProject().getJobs()) {
            List<Mode> modes = new ArrayList<>();
            for (Mode mode : job.getModes()) {
                modes.add(new Mode(mode.getModeId(), mode.getDuration(), new HashMap<>(mode.getRequestedResources())));
            }
            deepActivities.add(new Job(job.getJobId(), modes, new ArrayList<>()));
        }

        // Add the relationships
        int i = 0;
        for (Job job : benchmark.getProject().getJobs()) {
            List<Job> successors = job.getSuccessor().stream().map(Job::getJobId).map(successorJobId ->
                    ProjectHelper.getJobFromProject(deepProject, successorJobId).get()).collect(Collectors.toList());
            deepActivities.get(i).setSuccessor(successors);
            i++;
        }

        return deepBenchmark;
    }

    public static List<JobMode> getDeepCopyOfJobModeList(Benchmark deepCopyBenchmark, List<JobMode> mainJobModeList) {
        return mainJobModeList.stream().map(jobMode -> {
            Job selectedJob = ProjectHelper.getJobFromProject(deepCopyBenchmark.getProject(), jobMode.getJob().getJobId()).get();
            Mode selectedMode = ProjectHelper.getModeFromJob(selectedJob, jobMode.getMode().getModeId()).get();
            return new JobMode(selectedJob, selectedMode);
        }).collect(Collectors.toList());
    }
}
