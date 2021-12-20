package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.benchmark.model.*;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
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
    public static Optional<Activity> getJobFromProject(Project project, int jobId) {
        return project.getActivities().stream().filter(job -> job.getActivityId() == jobId).findFirst();
    }

    /**
     * Get a mode according to the modeId from a Job
     * @param activity The job of relevance
     * @param modeId The modeId that should be fetched
     * @return (Optional) mode of the job as object
     */
    public static Optional<Mode> getModeFromJob(Activity activity, int modeId) {
        return activity.getModes().stream().filter(mode -> mode.getModeId() == modeId).findFirst();
    }

    /**
     * Get the direct predecessors of a job
     * @param project The project containing all jobs
     * @param activity The job of relevance
     * @return A set of direct predecessors of a job
     */
    public static Set<Activity> getPredecessorsOfJob(Project project, Activity activity) {
        Set<Activity> activities = new HashSet<>();
        project.getActivities().forEach(possiblePredecessor -> {
            Optional<Activity> possiblePredecessorOptional = possiblePredecessor.getSuccessors()
                    .stream()
                    .filter(job2 -> job2.getActivityId() == activity.getActivityId())
                    .findFirst();
            if (possiblePredecessorOptional.isPresent())
                activities.add(possiblePredecessor);
        });
        return activities;
    }

    /**
     * Get all predecessors of a job
     * @param project The project containing all jobs
     * @param activity The job of relevance
     * @return A set of direct predecessors of a job
     */
    public static Set<Activity> getAllPredecessorsOfJob(Project project, Activity activity) {
        Set<Activity> activities = new HashSet<>();

        for (Activity predecessor : ProjectHelper.getPredecessorsOfJob(project, activity)) {
            activities.addAll(new HashSet<>(ProjectHelper.getAllPredecessorsOfJob(project, predecessor)));
        }

        activities.addAll(ProjectHelper.getPredecessorsOfJob(project, activity));
        return activities;
    }

    /**
     * Get the depth of a job.
     * @param project Project including all jobs
     * @param activity The job of relevance
     * @param currentDepth The current depth (used due recursion behaviour)
     * @return The depth of the relevant job
     */
    public static int getDepthOfJob(Project project, Activity activity, int currentDepth) {
        Set<Activity> directPredecessors = ProjectHelper.getPredecessorsOfJob(project, activity);
        if (directPredecessors.isEmpty())
            return currentDepth;

        int maxPredecessor = 0;
        for (Activity directPredecessor : directPredecessors) {
            maxPredecessor = Math.max(maxPredecessor, ProjectHelper.getDepthOfJob(project, directPredecessor, currentDepth + 1));
        }

        return maxPredecessor;
    }

    /**
     * Get all available Jobs where the already scheduled jobs holds
     * @param project Project
     * @param alreadyScheduledActivities The current scheduled jobs which is necessary to determine the new states
     * @return
     */
    public static Set<Activity> getAvailableJobs(Project project, List<Activity> alreadyScheduledActivities) {
        Set<Activity> availableActivities = project.getActivities().stream().filter(job -> alreadyScheduledActivities.containsAll(ProjectHelper.getPredecessorsOfJob(project, job))).collect(Collectors.toSet());
        availableActivities.removeAll(alreadyScheduledActivities);
        return availableActivities;
    }

    public static Benchmark getDeepCopyOfBenchmark(Benchmark benchmark) {
        Benchmark deepBenchmark = new Benchmark();
        Project deepProject = new Project();
        List<Activity> deepActivities = new ArrayList<>();

        deepBenchmark.setName(benchmark.getName());
        deepBenchmark.setHorizon(benchmark.getHorizon());
        deepBenchmark.setNumberJobs(benchmark.getNumberJobs());
        deepBenchmark.setProject(deepProject);

        deepProject.setAvailableResources(new HashMap<>(benchmark.getProject().getAvailableResources()));
        deepProject.setProjectId(benchmark.getProject().getProjectId());
        deepProject.setActivities(deepActivities);

        // Deep copy
        for (Activity activity : benchmark.getProject().getActivities()) {
            List<Mode> modes = new ArrayList<>();
            for (Mode mode : activity.getModes()) {
                modes.add(new Mode(mode.getModeId(), mode.getDuration(), new HashMap<>(mode.getRequestedResources())));
            }
            deepActivities.add(new Activity(activity.getActivityId(), modes, new ArrayList<>()));
        }

        // Add the relationships
        int i = 0;
        for (Activity activity : benchmark.getProject().getActivities()) {
            List<Activity> successors = activity.getSuccessors().stream().map(Activity::getActivityId).map(successorJobId ->
                    ProjectHelper.getJobFromProject(deepProject, successorJobId).get()).collect(Collectors.toList());
            deepActivities.get(i).setSuccessors(successors);
            i++;
        }

        return deepBenchmark;
    }

    public static List<ActivityMode> getDeepCopyOfJobModeList(Benchmark deepCopyBenchmark, List<ActivityMode> mainActivityModeList) {
        return mainActivityModeList.stream().map(jobMode -> {
            Activity selectedActivity = ProjectHelper.getJobFromProject(deepCopyBenchmark.getProject(), jobMode.getActivity().getActivityId()).get();
            Mode selectedMode = ProjectHelper.getModeFromJob(selectedActivity, jobMode.getMode().getModeId()).get();
            return new ActivityMode(selectedActivity, selectedMode);
        }).collect(Collectors.toList());
    }
}
