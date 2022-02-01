package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.exception.NoNonRenewableResourcesLeftException;
import de.uol.sao.mrcpsp_framework.exception.RenewableResourceNotEnoughException;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.helper.SolverHelper;
import de.uol.sao.mrcpsp_framework.representation.ActivityMode;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.LinkedList;
import java.util.List;

@Log4j2
@Service("ReactiveTabuSearch")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class ReactiveTabuSearchAlgorithm {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    BeanFactory beans;

    public Schedule algorithm(Schedule currentPlanedSchedule,
                              Benchmark benchmark,
                              int iterations,
                              List<ActivityMode> fixedActivityModeList,
                              ObjectiveFunction costObjectiveFunction) throws GiveUpException, NoNonRenewableResourcesLeftException, RenewableResourceNotEnoughException {
        Schedule tabuSchedule = schedulerService.createSchedule(benchmark, currentPlanedSchedule.getScheduleRepresentation(), null);
        Schedule bestSchedule = tabuSchedule;
        Schedule bestOverallSchedule = bestSchedule;

        int tabuListSize = (int) Math.sqrt(benchmark.getNumberJobs() - 2);
        List<ScheduleRepresentation> tabuList = new LinkedList<>();

        int i = 0;

        while (i < iterations) {
            // Create neighbors
            ScheduleRepresentation representation = tabuSchedule.getScheduleRepresentation();
            List<ScheduleRepresentation> neighbourhood = SolverHelper.getNeighbourhood(benchmark, representation, fixedActivityModeList, 6);
            neighbourhood.removeIf(tabuList::contains);
            neighbourhood.removeIf(scheduleRepresentation -> {
                try {
                    Schedule schedule = schedulerService.createSchedule(benchmark, scheduleRepresentation, null);
                    if (!this.verifySolver(fixedActivityModeList, schedule)) {
                        return true;
                    }
                } catch (Exception ex) {
                    return true;
                }
                return false;
            });

            Schedule neighbourhoodFavorite = null;

            for (ScheduleRepresentation currentRepresentation : neighbourhood) {
                Schedule currentSchedule = null;

                try {
                    currentSchedule = schedulerService.createSchedule(benchmark, currentRepresentation, null);
                } catch (Exception ignored) { }

                if (ScheduleHelper.compareSchedule(currentSchedule, neighbourhoodFavorite, costObjectiveFunction) && this.verifySolver(fixedActivityModeList, currentSchedule)) {
                    neighbourhoodFavorite = currentSchedule;
                }
            }

            if (neighbourhoodFavorite != null) {
                tabuSchedule = neighbourhoodFavorite;
                if (ScheduleHelper.compareSchedule(tabuSchedule, bestSchedule, costObjectiveFunction)) {
                    bestSchedule = neighbourhoodFavorite;
                }

                tabuList.add(0, tabuSchedule.getScheduleRepresentation());
                if (tabuList.size() > tabuListSize)
                    tabuList.remove(tabuListSize - 1);
            }

            i += Math.max(neighbourhood.size(), 1);

            if (ScheduleHelper.compareSchedule(neighbourhoodFavorite, bestOverallSchedule, costObjectiveFunction)) {
                bestOverallSchedule = neighbourhoodFavorite;
            }
        }

        return bestOverallSchedule;
    }

    /**
     * Debug purpose method. Ensures that the solver solution matches with the already executed partial schedule
     * @return State of verification. True if successful, false if not.
     */
    private boolean verifySolver(List<ActivityMode> alreadyExecuted, Schedule planned) {
        List<ActivityMode> newPlannedSolution = planned.getScheduleRepresentation().toActivityModeList(planned.getBenchmark().getProject());

        boolean successful = true;
        for (int i = 0; i < alreadyExecuted.size(); i++) {
            int plannedJobId = newPlannedSolution.get(i).getActivity().getActivityId();
            int executedJobId = alreadyExecuted.get(i).getActivity().getActivityId();

            int plannedModeId = newPlannedSolution.get(i).getMode().getModeId();
            int executedModeId = alreadyExecuted.get(i).getMode().getModeId();

            if (plannedJobId != executedJobId || plannedModeId != executedModeId) {
                successful = false;
                break;
            }
        }

        return successful;
    }

}
