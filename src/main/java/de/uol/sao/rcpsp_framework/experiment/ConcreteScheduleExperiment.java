package de.uol.sao.rcpsp_framework.experiment;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.function.MultiObjectiveByPriorityFunction;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.metric.Metrics;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
import de.uol.sao.rcpsp_framework.service.VisualizationService;
import de.uol.sao.rcpsp_framework.solver.TabuSearchSolver;
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

    @Autowired
    TabuSearchSolver solver;

    @Override
    @SneakyThrows
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {
        Benchmark benchmark = benchmarks.get(1);

        Schedule schedule = solver.algorithm(benchmark, 100, new MultiObjectiveByPriorityFunction(Metrics.MAKESPAN, Metrics.SF1));
        Schedule backwardSchedule = schedulerService.createScheduleBackward(schedule);

        ScheduleHelper.outputSchedule(schedule, Metrics.SF1);
        ScheduleHelper.outputSchedule(backwardSchedule, Metrics.SF1);

        visualizationService.visualizeBenchmark(benchmark);
        visualizationService.visualizeSchedule(schedule);
    }

}
