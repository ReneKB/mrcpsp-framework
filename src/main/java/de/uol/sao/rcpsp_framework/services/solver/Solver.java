package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;

public interface Solver {

    /**
     * Execute the solver algorithm
     */
    Schedule algorithm(Benchmark benchmark, int iterations, UncertaintyModel uncertaintyModel) throws GiveUpException;

}
