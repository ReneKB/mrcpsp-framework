package de.uol.sao.rcpsp_framework.unit;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Project;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.scheduling.SchedulePlanInfo;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.benchmark.BenchmarkLoader;
import de.uol.sao.rcpsp_framework.benchmark.BenchmarkPSPLIBMultiModeLoader;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.List;

public class SchedulePlanInfoCalculationTest {

    @Test
    @Disabled
    @SneakyThrows
    void testCompleteScheduleInfoCalculationCreation() {
        // prepare
        BenchmarkLoader benchmarkLoader = new BenchmarkPSPLIBMultiModeLoader();
        Benchmark benchmark = benchmarkLoader.loadBenchmark("j20.mm/j203_2.mm");
        Project project = benchmark.getProject();

        int[] jobList = { 1, 2, 6, 3, 5, 4, 9, 11, 14, 18, 7, 17, 10, 13, 8, 16, 15, 12, 21, 19, 20, 22 };
        int[] modeList = { 1, 1, 2, 2, 1, 1, 2, 2, 3, 2, 2, 2, 2, 3, 2, 2, 3, 3, 3, 3, 2, 1 };

        ScheduleRepresentation representation = new ActivityListSchemeRepresentation(jobList, modeList);
        List<ActivityMode> activityModeList = representation.toActivityModeList(project);

        // test
        Schedule schedule = new SchedulerService().createSchedule(benchmark, representation, null);
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);

        // assert that every latest ending time minus latest starting time equals the duration
        schedulePlanInfo.getLatestFinishingTime().forEach((job, leastFinishingTimeLFT) -> {
            int leastStartingTime = schedulePlanInfo.getLatestStartingTime().get(job);

            int durationComputed = leastFinishingTimeLFT - leastStartingTime;
            int durationExpected = activityModeList.stream().filter(jobMode -> jobMode.getActivity().getActivityId() == job.getActivityId()).findFirst().get().getMode().getDuration();

            Assertions.assertEquals(durationExpected, durationComputed);
        });
    }

    @Test
    @Disabled
    @SneakyThrows
    void testPartialScheduleInfoCalculationCreation1() {
        // prepare
        BenchmarkLoader benchmarkLoader = new BenchmarkPSPLIBMultiModeLoader();
        Benchmark benchmark = benchmarkLoader.loadBenchmark("test.mm/test.mm");
        Project project = benchmark.getProject();

        int[] partialJobList = {1, 2};
        int[] partialModeList = {1, 2};

        ScheduleRepresentation representation = new ActivityListSchemeRepresentation(partialJobList, partialModeList);

        // test
        Schedule schedule = new SchedulerService().createSchedule(benchmark, representation, null);
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);

        // assert
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 0);

        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 0);

        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 5);

        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 5);
    }

    @Test
    @Disabled
    @SneakyThrows
    void testPartialScheduleInfoCalculationCreation2() {
        // prepare
        BenchmarkLoader benchmarkLoader = new BenchmarkPSPLIBMultiModeLoader();
        Benchmark benchmark = benchmarkLoader.loadBenchmark("test.mm/test.mm");
        Project project = benchmark.getProject();

        int[] partialJobList = {1, 2, 3, 5};
        int[] partialModeList = {1, 2, 1, 1};

        ScheduleRepresentation representation = new ActivityListSchemeRepresentation(partialJobList, partialModeList);
        // test
        Schedule schedule = new SchedulerService().createSchedule(benchmark, representation, null);
        SchedulePlanInfo schedulePlanInfo = ScheduleHelper.createScheduleRelationInfo(schedule);

        // assert
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 3).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestStartingTime().get(ProjectHelper.getJobFromProject(project, 5).get()), (Integer) 2);

        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 3).get()), (Integer) 1);
        Assertions.assertEquals(schedulePlanInfo.getLatestStartingTime().get(ProjectHelper.getJobFromProject(project, 5).get()), (Integer) 3);

        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 5);
        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 3).get()), (Integer) 2);
        Assertions.assertEquals(schedulePlanInfo.getEarliestFinishingTime().get(ProjectHelper.getJobFromProject(project, 5).get()), (Integer) 4);

        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 1).get()), (Integer) 0);
        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 2).get()), (Integer) 5);
        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 3).get()), (Integer) 3);
        Assertions.assertEquals(schedulePlanInfo.getLatestFinishingTime().get(ProjectHelper.getJobFromProject(project, 5).get()), (Integer) 5);
    }
}
