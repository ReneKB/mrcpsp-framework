package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.helper.SolverHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.*;

@Log4j2
@Service("TabuSearch")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TabuSearchSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    BeanFactory beans;

    @Override
    public Schedule algorithm(Benchmark benchmark,
                              int iterations,
                              ObjectiveFunction objectiveFunction) throws GiveUpException {
        // Create initial solution
        Schedule tabuSchedule = SolverHelper.createInitialSolution(schedulerService, benchmark);
        Schedule bestSchedule = tabuSchedule;
        Schedule bestOverallSchedule = bestSchedule;

        // Creates the tabu list T
        int tabuListSize = (int) Math.sqrt(benchmark.getNumberJobs() - 2);
        List<ScheduleRepresentation> tabuList = new LinkedList<>();

        // Run the iterative aspect of the algorithm
        int i = 0;
        while (i < iterations) {
            // Create neighbors
            ScheduleRepresentation representation = tabuSchedule.getScheduleRepresentation();
            List<ScheduleRepresentation> neighbourhood = SolverHelper.getNeighbourhood(benchmark, representation, null, 2);
            neighbourhood.removeIf(tabuList::contains);

            Schedule neighbourhoodFavorite = null;

            for (ScheduleRepresentation currentRepresentation : neighbourhood) {
                Schedule currentSchedule = null;

                try {
                    currentSchedule = schedulerService.createSchedule(benchmark, currentRepresentation, null);
                } catch (Exception ignored) {
                }

                if (ScheduleHelper.compareSchedule(currentSchedule, neighbourhoodFavorite, objectiveFunction)) {
                    neighbourhoodFavorite = currentSchedule;
                }
            }

            if (neighbourhoodFavorite != null) {
                tabuSchedule = neighbourhoodFavorite;
                if (ScheduleHelper.compareSchedule(tabuSchedule, bestSchedule, objectiveFunction)) {
                    bestSchedule = neighbourhoodFavorite;
                }

                tabuList.add(0, tabuSchedule.getScheduleRepresentation());
                if (tabuList.size() > tabuListSize)
                    tabuList.remove(tabuListSize - 1);
            }

            i += Math.max(neighbourhood.size(), 1);

            if (ScheduleHelper.compareSchedule(neighbourhoodFavorite, bestOverallSchedule, objectiveFunction))
                bestOverallSchedule = neighbourhoodFavorite;
        }

        return bestOverallSchedule;
    }

}
