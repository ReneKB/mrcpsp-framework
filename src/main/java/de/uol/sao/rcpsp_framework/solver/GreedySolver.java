package de.uol.sao.rcpsp_framework.solver;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Project;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Log4j2
@Service("GreedySolver")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class GreedySolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    int[] positionActivityScheduled;
    int[] positionModeScheduled;
    int[] maxModesValues;

    boolean completed = false;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, Metric<?> robustnessFunction, List<ActivityMode> fixedActivityModeList) {
        Schedule bestSchedule = null;

        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createSchedule(benchmark, this.nextGreedySchemeRepresentation(benchmark, fixedActivityModeList), null);
            } catch (Exception e) {
                // ignore as it will be considered as worst result
            }

            if (ScheduleHelper.compareSchedule(schedule, bestSchedule, robustnessFunction)) {
                bestSchedule = schedule;
            }

            if (completed) {
                log.info("All combinations completed! Result if definitely a global optimum! ");
                break;
            }
        }
        return bestSchedule;
    }

    public static int[] modeIncrementor(int[] current, int[] max, int index) {
        if (current[index] + 1 > max[index]) {
            current[index] = 1;
            return modeIncrementor(current, max, index - 1);
        } else {
            current[index] = current[index] + 1;
        }
        return current;
    }

    private ActivityListSchemeRepresentation nextGreedySchemeRepresentation(Benchmark benchmark, List<ActivityMode> fixedActivityModeList) {
        Project project = benchmark.getProject();

        if (positionActivityScheduled == null) {
            // Initial
            positionActivityScheduled = new int[benchmark.getNumberJobs()];
            positionModeScheduled = new int[benchmark.getNumberJobs()];
            maxModesValues = new int[benchmark.getNumberJobs()];
            for (int i = 0; i < positionActivityScheduled.length; i++) {
                int activityId = i + 1;
                positionActivityScheduled[i] = activityId;
                positionModeScheduled[i] = 1;
                maxModesValues[i] = ProjectHelper.getJobFromProject(project, activityId).get().getModes().size();
            }
        }

        int[] activitySchedule = Arrays.copyOf(positionActivityScheduled, positionActivityScheduled.length);
        int[] modesSchedule = Arrays.copyOf(positionModeScheduled, positionModeScheduled.length);

        ActivityListSchemeRepresentation activityListSchemeRepresentation = new ActivityListSchemeRepresentation(
            activitySchedule,
            modesSchedule
        );

        // Increase the indices
        boolean maxModesReached = Arrays.equals(positionModeScheduled, maxModesValues);

        // set next mode
        if (!maxModesReached && Arrays.equals(modesSchedule, positionModeScheduled)) {
            positionModeScheduled = modeIncrementor(positionModeScheduled, maxModesValues, positionModeScheduled.length - 1);
        } else {
            Arrays.fill(positionModeScheduled, 1);
            List<Activity> activityScheduled = Arrays.stream(activitySchedule)
                    .mapToObj(operand -> ProjectHelper.getJobFromProject(project, operand).get())
                    .collect(Collectors.toList());

            List<Activity> potentialResult = new ArrayList<>(activityScheduled);
            Set<Activity> availableActivities;

            int lastIndex = potentialResult.size() - 1;
            boolean climbUp = false;

            while (!completed && (potentialResult.equals(activityScheduled) || potentialResult.size() < activitySchedule.length)) {
                if (!climbUp) {
                    Activity removedActivity = potentialResult.remove(lastIndex);
                    availableActivities = ProjectHelper.getAvailableJobs(project, potentialResult);
                    availableActivities.removeIf(job -> job.getActivityId() <= removedActivity.getActivityId());
                } else {
                    availableActivities = ProjectHelper.getAvailableJobs(project, potentialResult);
                }

                if (availableActivities.isEmpty()) {
                    lastIndex--;
                } else {
                    climbUp = true;
                    Activity activity = availableActivities.stream().sorted(Comparator.comparingInt(Activity::getActivityId)).findFirst().get();
                    potentialResult.add(activity);
                }

                if (lastIndex == -1)
                    completed = true;
            }

            List<Integer> results = potentialResult.stream().map(Activity::getActivityId).collect(Collectors.toList());
            for (int i = 0; i < results.size(); i++) {
                positionActivityScheduled[i] = results.get(i);
            }
        }

        return activityListSchemeRepresentation;
    }

}
