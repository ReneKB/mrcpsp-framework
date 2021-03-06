package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.helper.SolverHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Log4j2
@Service("SimulatedAnnealing")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class SimulatedAnnealingSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    double temperature = 1000.0;
    double alpha = 0.90;

    @Override
    public Schedule algorithm(Benchmark benchmark,
                              int iterations,
                              ObjectiveFunction objectiveFunction) throws GiveUpException {
        Schedule bestSchedule = SolverHelper.createInitialSolution(schedulerService, benchmark);
        Schedule overallBestSolution = bestSchedule;

        int i = 0;
        while (i < iterations) {
            List<Schedule> neighbours = new ArrayList<>();
            List<ScheduleRepresentation> neighboursRepresentations = SolverHelper.getNeighbourhood(benchmark, bestSchedule.getScheduleRepresentation(), null, 2);

            for (ScheduleRepresentation neighbour : neighboursRepresentations) {
                try {
                    if (Math.random() < 0.5)
                        neighbours.add(schedulerService.createSchedule(benchmark, neighbour, null));
                } catch (Exception ignored) {}
            }

            neighbours.sort((o1, o2) -> objectiveFunction.fitness(o1) - objectiveFunction.fitness(o2) > 0 ? 1 : -1);
            Schedule selectedNeighbour = neighbours.size() != 0 ? neighbours.get(0) : bestSchedule;

            double diff = objectiveFunction.fitness(bestSchedule) - objectiveFunction.fitness(selectedNeighbour);
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

            if (ScheduleHelper.compareSchedule(bestSchedule, overallBestSolution, objectiveFunction))
                overallBestSolution = bestSchedule;
            i += neighboursRepresentations.size();
        }

        return overallBestSolution;
    }

    /**
     * Computes the probability of a solution acceptance acc. to the SA-algorithm
     * @param diff Difference of the fitness
     * @param temperature The current temperature
     * @return The prob of solution acceptance
     */
    double probability(double diff, double temperature) {
        return Math.exp(-1 * diff / temperature);
    }
}
