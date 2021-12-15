package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Mode;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.representation.JobMode;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.solver.Solver;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("UncertaintyHybridExperiment")
@Log4j2
public class UncertaintyHybridExperiment extends UncertaintyExperiment {

    @Override
    public Schedule buildSolution(Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction) throws GiveUpException {
        return solver.algorithm(benchmark, iterations, robustnessFunction, null);
    }

    @Override
    @SneakyThrows
    public Schedule buildUncertaintySolution(Schedule plannedSolution, Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction, UncertaintyModel uncertaintyModel) {
        Benchmark subbenchmark = ProjectHelper.getDeepCopyOfBenchmark(benchmark);

        ScheduleRepresentation plannedScheduleScheduleRepresentation = plannedSolution.getScheduleRepresentation();
        List<JobMode> plannedJobModeList = plannedScheduleScheduleRepresentation.toJobMode(subbenchmark.getProject());

        int lastActivityId = plannedJobModeList.stream().map(JobMode::getJob).map(Job::getJobId).sorted((o1, o2) -> o2 - o1).findFirst().get();

        List<JobMode> buildingJobModeList = new ArrayList<>();
        Map<JobMode, Integer> delayedDurations = new HashMap<>();

        while (buildingJobModeList.size() < plannedJobModeList.size()) {
            for (JobMode jobMode : plannedJobModeList) {
                Job job = jobMode.getJob();
                Mode mode = jobMode.getMode();

                int plannedDuration = mode.getDuration();
                boolean isDummyMode = job.getJobId() == 1 | job.getJobId() == lastActivityId;
                boolean alreadyScheduled = buildingJobModeList.contains(jobMode);

                if (!alreadyScheduled)
                    buildingJobModeList.add(jobMode);

                if (!isDummyMode && !alreadyScheduled) {
                    int actualDuration = uncertaintyModel.computeActualDuration(mode.getDuration());
                    if (actualDuration > plannedDuration) {
                        delayedDurations.put(jobMode, actualDuration);
                        mode.setDuration(actualDuration);
                        break;
                    }
                }
            }

            // Prepare the benchmark with the actual durations
            delayedDurations.forEach((jobMode, delayedDuration) -> {
                int jobId = jobMode.getJob().getJobId();
                int modeId = jobMode.getMode().getModeId();

                Job job = ProjectHelper.getJobFromProject(subbenchmark.getProject(), jobId).get();
                Mode mode = ProjectHelper.getModeFromJob(job, modeId).get();
                mode.setDuration(delayedDuration);
            });

            Schedule potentialSchedule = null;
            try {
                potentialSchedule = solver.algorithm(subbenchmark, Math.min(iterations / 5, 1500), robustnessFunction, buildingJobModeList);
                if (potentialSchedule == null)
                    potentialSchedule = plannedSolution;
                else if (!this.verifySolver(buildingJobModeList, potentialSchedule)) {
                    log.info("New planned solution doesn't match with planned solution for solver " + solver.getClass().getSimpleName());
                }

            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }

            plannedJobModeList = potentialSchedule.getScheduleRepresentation().toJobMode(subbenchmark.getProject());
        }

        return this.schedulerService.createSchedule(subbenchmark, new ActivityListSchemeRepresentation(buildingJobModeList), null);
    }

    @Override
    public int getUncertaintyExperiments() {
        return 12;
    }

    /**
     * Debug purpose method. Ensures that the solver solution matches with the already executed partial schedule
     * @return State of verification. True if successful, false if not.
     */
    private boolean verifySolver(List<JobMode> alreadyExecuted, Schedule planned) {
        List<JobMode> newPlannedSolution = planned.getScheduleRepresentation().toJobMode(planned.getBenchmark().getProject());

        boolean successful = true;
        for (int i = 0; i < alreadyExecuted.size(); i++) {
            int plannedJobId = newPlannedSolution.get(i).getJob().getJobId();
            int executedJobId = alreadyExecuted.get(i).getJob().getJobId();

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
