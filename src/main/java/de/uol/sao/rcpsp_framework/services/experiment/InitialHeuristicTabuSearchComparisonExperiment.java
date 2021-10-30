package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("InitialHeuristicTabuSearchComparisonExperiment")
public class InitialHeuristicTabuSearchComparisonExperiment implements Experiment {

    @Override
    public void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks) {

    }
}
