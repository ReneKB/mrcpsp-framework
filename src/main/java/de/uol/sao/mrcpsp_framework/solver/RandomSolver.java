package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.heuristic.Heuristic;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicDirector;
import de.uol.sao.mrcpsp_framework.heuristic.HeuristicSampling;
import de.uol.sao.mrcpsp_framework.heuristic.activities.RandomActivityHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.RandomModeHeuristic;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import de.uol.sao.mrcpsp_framework.service.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

@Log4j2
@Service("RandomSolver")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class RandomSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Override
    public Schedule algorithm(Benchmark benchmark,
                              int iterations,
                              ObjectiveFunction objectiveFunction) {
        Schedule bestSchedule = null;

        // Run the iterative aspect of the algorithm
        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createSchedule(benchmark, HeuristicDirector.constructScheduleRepresentation(benchmark,
                        Heuristic.builder()
                            .modeHeuristic(RandomModeHeuristic.class)
                            .activityHeuristic(RandomActivityHeuristic.class)
                            .build(),
                        HeuristicSampling.SINGLE),
                        null);
            } catch (Exception ignored) { }

            if (ScheduleHelper.compareSchedule(schedule, bestSchedule, objectiveFunction))
                bestSchedule = schedule;
        }

        return bestSchedule;
    }
}
