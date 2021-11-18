package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.VisualizationService;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import de.uol.sao.rcpsp_framework.services.solver.GeneticAlgorithmSolver;
import de.uol.sao.rcpsp_framework.services.solver.RandomSolver;
import de.uol.sao.rcpsp_framework.services.solver.SimulatedAnnealingSolver;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.SneakyThrows;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("TestExperiment")
public class TestExperiment implements Experiment {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    VisualizationService visualizationService;

    @Autowired
    SimulatedAnnealingSolver solver;

    @Override
    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        Benchmark benchmark = benchmarks.get(0);

        ScheduleRepresentation scheduleRepresentation = new ActivityListSchemeRepresentation(
            new int[] { 1, 4, 7, 3, 6, 2, 5, 8, 9 },
            new int[] { 1, 1, 1, 1, 1, 1, 1, 1, 1 }
        );

        // Schedule schedule = solver.algorithm(benchmark, 100, Metrics.RM1, null);
        Schedule schedule = schedulerService.createScheduleProactive(benchmark, scheduleRepresentation, null);
        Schedule backward = schedulerService.createScheduleBackward(schedule);

        ScheduleHelper.outputSchedule(schedule, Metrics.RM1);

        visualizationService.visualizeJobsBenchmark(benchmark);
        visualizationService.visualizeResults(backward);
    }
}
