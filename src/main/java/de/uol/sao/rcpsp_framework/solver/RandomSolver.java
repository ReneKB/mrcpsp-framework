package de.uol.sao.rcpsp_framework.solver;

import de.uol.sao.rcpsp_framework.helper.ScheduleComparator;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.heuristic.Heuristic;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicDirector;
import de.uol.sao.rcpsp_framework.heuristic.HeuristicSampling;
import de.uol.sao.rcpsp_framework.heuristic.activities.RandomActivityHeuristic;
import de.uol.sao.rcpsp_framework.heuristic.modes.RandomModeHeuristic;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.service.SchedulerService;
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
    public Schedule algorithm(Benchmark benchmark, int iterations, ScheduleComparator comparator, List<ActivityMode> fixedActivityModeList, Schedule baseline) {
        Schedule bestSchedule = null;
        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createSchedule(benchmark, HeuristicDirector.constructScheduleRepresentation(benchmark,
                        Heuristic.builder()
                            .modeHeuristic(RandomModeHeuristic.class)
                            .activityHeuristic(RandomActivityHeuristic.class)
                            .build(),
                        HeuristicSampling.SINGLE,
                        fixedActivityModeList),
                        null);

                if (baseline != null)
                    schedule.setBaselinePlan(baseline);

            } catch (Exception e) {
                // ignore as it will be considered as worst result
            }

            if (ScheduleHelper.compareSchedule(schedule, bestSchedule, comparator))
                bestSchedule = schedule;
        }
        return bestSchedule;
    }
}
