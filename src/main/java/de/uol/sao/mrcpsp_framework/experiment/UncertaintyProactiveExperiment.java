package de.uol.sao.mrcpsp_framework.experiment;

import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.function.SingleObjectiveFunction;
import de.uol.sao.mrcpsp_framework.metric.Metric;
import de.uol.sao.mrcpsp_framework.metric.Metrics;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.mrcpsp_framework.solver.Solver;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service("UncertaintyProactiveExperiment")
@Log4j2
public class UncertaintyProactiveExperiment extends UncertaintyExperiment {

    @Override
    public Schedule buildSolution(Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessMetric) throws GiveUpException {
        return solver.algorithm(benchmark, iterations, new SingleObjectiveFunction(Metrics.MAKESPAN));
    }

    @Override
    @SneakyThrows
    public Schedule buildUncertaintySolution(Schedule plannedSolution, Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction, UncertaintyModel uncertaintyModel) {
        return super.schedulerService.createSchedule(benchmark, plannedSolution.getScheduleRepresentation(), uncertaintyModel);
    }

    @Override
    public int getUncertaintyExperiments() {
        return 50;
    }
}
