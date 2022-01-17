package de.uol.sao.rcpsp_framework.solver;

import de.uol.sao.rcpsp_framework.exception.GiveUpException;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.helper.ScheduleComparator;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.representation.ActivityMode;

import java.util.List;

public interface Solver {

    /**
     * Execute the solver algorithm
     */
    Schedule algorithm(Benchmark benchmark,
                       int iterations,
                       ScheduleComparator comparator,
                       List<ActivityMode> fixedActivityModeList,
                       Schedule baseline) throws GiveUpException;

}
