package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.rcpsp_framework.service.VisualizationService;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import de.uol.sao.rcpsp_framework.solver.GeneticAlgorithmSolver;
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

    @Autowired
    GeneticAlgorithmSolver geneticAlgorithmSolver;

    @Override
    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        Benchmark benchmark = benchmarks.get(1);

        Schedule schedule = geneticAlgorithmSolver.algorithm(benchmark, 100, Metrics.SF1, null);
        Schedule backwardSchedule = schedulerService.createScheduleBackward(schedule);

        ScheduleHelper.outputSchedule(schedule, Metrics.SF1);
        ScheduleHelper.outputSchedule(backwardSchedule, Metrics.SF1);

        visualizationService.visualizeBenchmark(benchmark);
        visualizationService.visualizeSchedule(schedule);
        // visualizationService.visualizeSchedule(backwardSchedule);
    }

}
