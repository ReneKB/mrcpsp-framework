package de.uol.sao.mrcpsp_framework.helper;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.heuristic.Heuristic;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicDirector;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicSampling;
import de.uol.sao.mrcpsp_framework.heuristic.activities.ActivityHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.activities.LSTHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.LRSHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.ModeHeuristic;
import de.uol.sao.mrcpsp_framework.representation.ActivityMode;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.SneakyThrows;

import java.util.*;
import java.util.stream.Collectors;

public class SolverHelper {

    public static void flipNeighbourModes(List<Activity> changeableActivities, int[] neighbourModes) {
        if (changeableActivities.isEmpty())
            return;

        int gap = neighbourModes.length - changeableActivities.size();

        Mode newSelectedMode = null;
        int newSelectedModeIndex = 0;

        int completeModesAmount = changeableActivities.stream().map(Activity::getModes).map(modes -> modes.size()).reduce(Integer::sum).get();
        boolean singleMode = completeModesAmount == changeableActivities.size();

        while (newSelectedMode == null && !singleMode) {
            int randomIndex = new Random().nextInt(changeableActivities.size());
            int currentMode = neighbourModes[randomIndex + gap];

            Activity activity = changeableActivities.get(randomIndex);
            int size = activity.getModes().size();
            if (size != 1) {
                List<Mode> selectedMode = activity.getModes().stream().dropWhile(mode -> mode.getModeId() == currentMode).collect(Collectors.toList());
                Collections.shuffle(selectedMode);
                newSelectedMode = selectedMode.get(0);
                newSelectedModeIndex = randomIndex;
            }
        }

        if (!singleMode)
            neighbourModes[newSelectedModeIndex + gap] = newSelectedMode.getModeId();
    }


    @SneakyThrows
    public static List<ScheduleRepresentation> getNeighbourhood(Benchmark benchmark, ScheduleRepresentation scheduleRepresentation, List<ActivityMode> fixedActivityMode, int modeRepeats) {
        List<ActivityMode> activityModes = scheduleRepresentation.toActivityModeList(benchmark.getProject());
        List<ScheduleRepresentation> neighbourhood = new ArrayList<>();

        List<Activity> activityList = activityModes.stream().map(ActivityMode::getActivity).collect(Collectors.toList());
        List<Mode> modeList = activityModes.stream().map(ActivityMode::getMode).collect(Collectors.toList());

        List<Activity> changeableModes = fixedActivityMode != null ? activityList.stream()
                .filter(job -> !fixedActivityMode.stream().map(ActivityMode::getActivity).collect(Collectors.toList()).contains(job))
                .collect(Collectors.toList()) : new ArrayList<>(activityList);

        int[] jobs = new int[activityList.size()];
        int[] modes = new int[modeList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = activityList.get(i).getActivityId();
            modes[i] = modeList.get(i).getModeId();
        }

        Set<Activity> handledActivities = new LinkedHashSet<>();
        if (fixedActivityMode != null) {
            handledActivities.addAll(fixedActivityMode.stream().map(ActivityMode::getActivity).collect(Collectors.toList()));
        } else
            handledActivities.add(activityList.get(0));

        // Adds for the same activity list mode neighbours
        for (int i = 0; i < modeRepeats; i++) {
            int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
            int[] neighbourModes = Arrays.copyOf(modes, modes.length);

            SolverHelper.flipNeighbourModes(changeableModes, neighbourModes);
            neighbourhood.add(new ActivityListRepresentation(neighbourJobs, neighbourModes));
        }

        for (int i = fixedActivityMode != null ? fixedActivityMode.size() + 1 : 1; i < activityList.size(); i++) {
            Activity previousActivity = activityList.get(i - 1);
            Activity currentActivity = activityList.get(i);

            Set<Activity> requiredActivities = ProjectHelper.getPredecessorsOfJob(benchmark.getProject(), currentActivity);
            if (handledActivities.containsAll(requiredActivities) && !requiredActivities.contains(previousActivity)) { // Can be swapped
                int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
                int[] neighbourModes = Arrays.copyOf(modes, modes.length);

                int tmp = neighbourJobs[i-1];
                neighbourJobs[i-1] = neighbourJobs[i];
                neighbourJobs[i] = tmp;

                tmp = neighbourModes[i-1];
                neighbourModes[i-1] = neighbourModes[i];
                neighbourModes[i] = tmp;

                SolverHelper.flipNeighbourModes(changeableModes, neighbourModes);
                neighbourhood.add(new ActivityListRepresentation(neighbourJobs, neighbourModes));
            }
            handledActivities.add(currentActivity);
        }

        return neighbourhood;
    }

    public static Schedule createInitialSolution(SchedulerService schedulerService, Benchmark benchmark) throws GiveUpException {
        // must be a feasible solution
        Schedule schedule = null;

        int giveUpCounter = 0;
        while (schedule == null) {
            if (giveUpCounter > 50) {
                try {
                    ScheduleRepresentation scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                            benchmark,
                            Heuristic.builder()
                                    .modeHeuristic(LRSHeuristic.class)
                                    .activityHeuristic(LSTHeuristic.class)
                                    .build(),
                            HeuristicSampling.SINGLE);

                    schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
                } catch (Exception ex) {
                    throw new GiveUpException();
                }
            }

            for (Class<?> availableActivityHeuristic : ActivityHeuristic.availableActivityHeuristics) {
                if (schedule != null)
                    break;
                for (Class<?> availableModeHeuristic : ModeHeuristic.availableModeHeuristics) {
                    if (schedule != null)
                        break;

                    try {
                        ScheduleRepresentation scheduleRepresentation = HeuristicDirector.constructScheduleRepresentation(
                                benchmark,
                                Heuristic.builder()
                                        .modeHeuristic((Class<? extends ModeHeuristic>) availableModeHeuristic)
                                        .activityHeuristic((Class<? extends ActivityHeuristic>) availableActivityHeuristic)
                                        .build(),
                                Math.random() < 0.66 ? HeuristicSampling.SINGLE : HeuristicSampling.REGRET_BASED_BIAS);

                        schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
                    } catch (Exception ex) {
                    }
                }
            }

            giveUpCounter++;
        }

        return schedule;
    }

}
