package de.uol.sao.mrcpsp_framework.solver;

import de.uol.sao.mrcpsp_framework.exception.GiveUpException;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.function.ObjectiveFunction;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;

public interface Solver {

    /**
     * Execute the solver algorithm
     */
    Schedule algorithm(Benchmark benchmark,
                       int iterations,
                       ObjectiveFunction objectiveFunction) throws GiveUpException;

}
