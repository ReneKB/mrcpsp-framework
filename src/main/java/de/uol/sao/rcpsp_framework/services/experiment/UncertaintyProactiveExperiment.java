package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.services.solver.Solver;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service("UncertaintyProactiveExperiment")
@Log4j2
public class UncertaintyProactiveExperiment extends UncertaintyExperiment {

    @Override
    public Schedule buildSolution(Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction) throws GiveUpException {
        return solver.algorithm(benchmark, iterations, null);
    }

    @Override
    @SneakyThrows
    public Schedule buildUncertaintySolution(Schedule plannedSolution, Benchmark benchmark, Solver solver, int iterations, Metric<?> robustnessFunction, UncertaintyModel uncertaintyModel) {
        return super.schedulerService.createScheduleProactive(benchmark, plannedSolution.getScheduleRepresentation(), uncertaintyModel);
    }
}
