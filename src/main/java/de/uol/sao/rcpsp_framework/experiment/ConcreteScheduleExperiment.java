package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.service.VisualizationService;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("ConcreteScheduleExperiment")
@Log4j2
public class ConcreteScheduleExperiment implements Experiment {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    VisualizationService visualizationService;

    @Override
    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        ActivityListSchemeRepresentation activityListSchemeRepresentation = new ActivityListSchemeRepresentation(
                new int[] {1, 2, 3, 5, 4, 6},
                new int[] {1, 1, 1, 1, 1, 1}
        );

        Schedule schedule = schedulerService.createSchedule(benchmarks.get(0), activityListSchemeRepresentation, null);
        ScheduleHelper.outputSchedule(schedule, Metrics.SF1);
        Schedule backwardSchedule = schedulerService.createScheduleBackward(schedule);

        Map<Activity, Integer> slacks = ScheduleHelper.computeFreeSlacks(ScheduleHelper.createScheduleRelationInfo(schedule));

        args.getOptionNames().forEach(finalOption -> {
            switch (CommandArgsOptions.fromString(finalOption)) {
                case VISUALIZE:
                    log.info("");
                    log.info("Visualizing the result... ");
                    visualizationService.visualizeBenchmark(benchmarks.get(0));
                    visualizationService.visualizeSchedule(schedule);
                    visualizationService.visualizeSchedule(backwardSchedule);
                    break;
                default:
            }
        });
    }

}
