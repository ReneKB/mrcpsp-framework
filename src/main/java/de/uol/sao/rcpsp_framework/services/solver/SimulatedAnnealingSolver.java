package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.helper.SolverHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Log4j2
@Service("SimulatedAnnealing")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class SimulatedAnnealingSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    double temperature = 1000.0;
    double alpha = 0.98;

    @Override
    @SneakyThrows
    public Schedule algorithm(Benchmark benchmark, int iterations, Metric<?> robustnessFunction, List<JobMode> fixedJobModeList) throws GiveUpException {
        Schedule bestSchedule = SolverHelper.createInitialSolution(schedulerService, benchmark, fixedJobModeList);
        Schedule overallBestSolution = bestSchedule;

        int i = 0;
        while (i < iterations) {
            List<Schedule> neighbours = new ArrayList<>();
            List<ScheduleRepresentation> neighboursRepresentations = SolverHelper.getNeighbourhood(benchmark, bestSchedule.getScheduleRepresentation(),fixedJobModeList);

            for (ScheduleRepresentation neighbour : neighboursRepresentations) {
                try {
                    if (Math.random() < 0.4)
                        neighbours.add(schedulerService.createScheduleProactive(benchmark, neighbour, null));
                } catch (Exception ex) {}
            }

            neighbours.sort((o1, o2) -> SolverHelper.calculateFitness(o1, robustnessFunction) - SolverHelper.calculateFitness(o2, robustnessFunction) > 0 ? 1 : -1);
            Schedule selectedNeighbour = neighbours.size() != 0 ? neighbours.get(0) : bestSchedule;

            double diff = SolverHelper.calculateFitness(bestSchedule, robustnessFunction) - SolverHelper.calculateFitness(selectedNeighbour, robustnessFunction); // reverse as MIN
            boolean improvement = false;

            if (diff > 0) {
                bestSchedule = selectedNeighbour;
                improvement = true;
            } else if (Math.random() <= probability(diff, temperature)) {
                bestSchedule = selectedNeighbour;
            }

            if (!improvement) {
                temperature = temperature * alpha;
            }

            if (ScheduleHelper.compareSchedule(bestSchedule, overallBestSolution, robustnessFunction))
                overallBestSolution = bestSchedule;
            i += neighboursRepresentations.size();
        }

        return overallBestSolution;
    }

    double probability(double diff, double temperature) {
        double prob = Math.exp(-1 * diff / temperature);
        return prob;
    }
}
