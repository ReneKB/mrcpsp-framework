package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.RandomHeuristic;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
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
    public Schedule algorithm(Benchmark benchmark, int iterations) {
        Schedule bestSchedule = null;
        Heuristic heuristic = new RandomHeuristic();
        for (int i = 0; i < iterations; i++) {
            Schedule schedule = null;
            try {
                schedule = schedulerService.createScheduleProactive(benchmark, heuristic.buildScheduleRepresentation(benchmark));
            } catch (Exception e) {
                // ignore as it will be considered as worst result
            }
            if (bestSchedule == null || (schedule != null && bestSchedule.computeMetric(Metrics.MAKESPAN) > schedule.computeMetric(Metrics.MAKESPAN)))
                bestSchedule = schedule;
        }
        return bestSchedule;
    }
}
