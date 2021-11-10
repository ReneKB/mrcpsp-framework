package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.RandomActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.RandomModeHeuristic;
import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j2
@Service("RandomSolver")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class RandomSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, Metric<?> robustnessFunction, List<JobMode> fixedJobModeList) {
        Schedule bestSchedule = null;
        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createScheduleProactive(benchmark, HeuristicDirector.constructScheduleRepresentation(benchmark,
                        Heuristic.builder()
                            .modeHeuristic(RandomModeHeuristic.class)
                            .activityHeuristic(RandomActivityHeuristic.class)
                            .build(),
                        HeuristicSampling.SINGLE,
                                fixedJobModeList),
                        null);
            } catch (Exception e) {
                // ignore as it will be considered as worst result
            }

            if (ScheduleHelper.compareSchedule(schedule, bestSchedule, robustnessFunction))
                bestSchedule = schedule;
        }
        return bestSchedule;
    }
}
