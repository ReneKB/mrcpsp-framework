package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.List;

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
                new int[] {1, 3, 2, 6, 8, 4, 5, 7, 11, 9, 10, 12},
                new int[] {1, 1, 1, 1, 1, 1, 2, 1, 1, 1, 2, 1}
        );
        Schedule schedule = schedulerService.createScheduleProactive(benchmarks.get(0), activityListSchemeRepresentation, null);
        ScheduleHelper.outputSchedule(schedule, Metrics.RM1);
        Schedule backwardSchedule = schedulerService.createScheduleBackward(schedule);

        args.getOptionNames().forEach(finalOption -> {
            switch (CommandArgsOptions.fromString(finalOption)) {
                case VISUALIZE:
                    log.info("");
                    log.info("Visualizing the result... ");
                    visualizationService.visualizeJobsBenchmark(benchmarks.get(0));
                    visualizationService.visualizeResults(schedule);
                    visualizationService.visualizeResults(backwardSchedule);
                    break;
                default:
            }
        });
    }

}