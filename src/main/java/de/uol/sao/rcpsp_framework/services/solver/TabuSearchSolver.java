package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.helper.SolverHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.*;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Log4j2
@Service("TabuSearch")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TabuSearchSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    BeanFactory beans;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, Metric<?> robustnessFunction, List<JobMode> fixedJobModeList) throws GiveUpException {
        Schedule tabuSchedule = SolverHelper.createInitialSolution(schedulerService, benchmark, fixedJobModeList);
        Schedule bestSchedule = tabuSchedule;
        Schedule bestOverallSchedule = bestSchedule;

        int tabuListSize = (int) Math.sqrt(benchmark.getNumberJobs() - 2);
        List<ScheduleRepresentation> tabuList = new LinkedList<>();

        // Generate random solution until it's feasible
        int i = 0;
        while (i < iterations) {
            // Create neighbors
            ScheduleRepresentation representation = tabuSchedule.getScheduleRepresentation();
            List<ScheduleRepresentation> neighbourhood = SolverHelper.getNeighbourhood(benchmark, representation, fixedJobModeList);
            neighbourhood.removeIf(tabuList::contains);

            Schedule neighbourhoodFavorite = null;

            for (int j = 0; j < neighbourhood.size(); j++) {
                ScheduleRepresentation currentRepresentation = neighbourhood.get(j);
                Schedule currentSchedule = null;

                try {
                    currentSchedule = schedulerService.createScheduleProactive(benchmark, currentRepresentation, null);
                } catch (Exception ex) { }

                if (ScheduleHelper.compareSchedule(currentSchedule, neighbourhoodFavorite, robustnessFunction)) {
                    neighbourhoodFavorite = currentSchedule;
                }
            }

            if (neighbourhoodFavorite != null) {
                tabuSchedule = neighbourhoodFavorite;
                if (ScheduleHelper.compareSchedule(tabuSchedule, bestSchedule, robustnessFunction)) {
                    bestSchedule = neighbourhoodFavorite;
                }

                tabuList.add(0, tabuSchedule.getScheduleRepresentation());
                if (tabuList.size() > tabuListSize)
                    tabuList.remove(tabuListSize - 1);
            }

            i += Math.max(neighbourhood.size(), 1);

            if (ScheduleHelper.compareSchedule(neighbourhoodFavorite, bestOverallSchedule, robustnessFunction))
                bestOverallSchedule = neighbourhoodFavorite;
        }
        return bestOverallSchedule;
    }

}
