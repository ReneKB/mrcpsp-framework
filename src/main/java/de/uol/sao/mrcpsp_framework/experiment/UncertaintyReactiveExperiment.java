package de.uol.sao.mrcpsp_framework.experiment;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.function.SingleObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.function.MultiObjectiveByPriorityFunction;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.metric.Cost;
import de.uol.sao.mrcpsp_framework.metric.Metric;
import de.uol.sao.mrcpsp_framework.metric.Metrics;
import de.uol.sao.mrcpsp_framework.representation.ActivityMode;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.solver.ReactiveTabuSearchAlgorithm;
import de.uol.sao.mrcpsp_framework.solver.Solver;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("UncertaintyReactiveExperiment")
@Log4j2
public class UncertaintyReactiveExperiment extends UncertaintyExperiment {

    @Autowired
    ReactiveTabuSearchAlgorithm reactiveTabuSearchAlgorithm;

    @Override
    public Schedule buildSolution(Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessMetric) throws GiveUpException {
        return solver.algorithm(benchmark, iterations, new SingleObjectiveFunction(Metrics.MAKESPAN));
    }

    @Override
    @SneakyThrows
    public Schedule buildUncertaintySolution(Schedule plannedSolution, Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction, UncertaintyModel uncertaintyModel) {
        Benchmark subbenchmark = ProjectHelper.getDeepCopyOfBenchmark(benchmark);

        ScheduleRepresentation plannedScheduleScheduleRepresentation = plannedSolution.getScheduleRepresentation();
        List<ActivityMode> plannedActivityModeList = plannedScheduleScheduleRepresentation.toActivityModeList(subbenchmark.getProject());

        int lastActivityId = plannedActivityModeList.stream().map(ActivityMode::getActivity).map(Activity::getActivityId).sorted((o1, o2) -> o2 - o1).findFirst().get();

        List<ActivityMode> buildingActivityModeList = new ArrayList<>();
        Map<ActivityMode, Integer> delayedDurations = new HashMap<>();

        ObjectiveFunction objectiveFunction = new MultiObjectiveByPriorityFunction(new Cost(plannedSolution), Metrics.MAKESPAN);

        Schedule potentialSchedule = plannedSolution;
        while (buildingActivityModeList.size() < plannedActivityModeList.size()) {
            for (ActivityMode activityMode : plannedActivityModeList) {
                Activity activity = activityMode.getActivity();
                Mode mode = activityMode.getMode();

                int plannedDuration = mode.getDuration();
                boolean isDummyMode = activity.getActivityId() == 1 | activity.getActivityId() == lastActivityId;
                boolean alreadyScheduled = buildingActivityModeList.contains(activityMode);

                if (!alreadyScheduled)
                    buildingActivityModeList.add(activityMode);

                if (!isDummyMode && !alreadyScheduled) {
                    int actualDuration = uncertaintyModel.computeActualDuration(mode.getDuration());
                    if (actualDuration > plannedDuration) {
                        delayedDurations.put(activityMode, actualDuration);
                        mode.setDuration(actualDuration);
                        break;
                    }
                }
            }

            // Prepare the benchmark with the actual durations
            delayedDurations.forEach((jobMode, delayedDuration) -> {
                int jobId = jobMode.getActivity().getActivityId();
                int modeId = jobMode.getMode().getModeId();

                Activity activity = ProjectHelper.getJobFromProject(subbenchmark.getProject(), jobId).get();
                Mode mode = ProjectHelper.getModeFromJob(activity, modeId).get();
                mode.setDuration(delayedDuration);
            });

            try {
                Schedule newPotentialSchedule = reactiveTabuSearchAlgorithm.algorithm(potentialSchedule, subbenchmark, 500, buildingActivityModeList, objectiveFunction);
                if (newPotentialSchedule != null)
                    potentialSchedule = newPotentialSchedule;
                else if (!this.verifySolver(buildingActivityModeList, potentialSchedule)) {
                    log.info("New planned solution doesn't match with planned solution. ");
                }

            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }

            plannedActivityModeList = potentialSchedule.getScheduleRepresentation().toActivityModeList(subbenchmark.getProject());
        }

        return this.schedulerService.createSchedule(subbenchmark, new ActivityListRepresentation(buildingActivityModeList), null);
    }

    @Override
    public int getUncertaintyExperiments() {
        return 12;
    }

    /**
     * Debug purpose method. Ensures that the solver solution matches with the already executed partial schedule
     * @return State of verification. True if successful, false if not.
     */
    private boolean verifySolver(List<ActivityMode> alreadyExecuted, Schedule planned) {
        List<ActivityMode> newPlannedSolution = planned.getScheduleRepresentation().toActivityModeList(planned.getBenchmark().getProject());

        boolean successful = true;
        for (int i = 0; i < alreadyExecuted.size(); i++) {
            int plannedJobId = newPlannedSolution.get(i).getActivity().getActivityId();
            int executedJobId = alreadyExecuted.get(i).getActivity().getActivityId();

            int plannedModeId = newPlannedSolution.get(i).getMode().getModeId();
            int executedModeId = alreadyExecuted.get(i).getMode().getModeId();

            if (plannedJobId != executedJobId || plannedModeId != executedModeId) {
                successful = false;
                break;
            }
        }

        return successful;
    }
}
