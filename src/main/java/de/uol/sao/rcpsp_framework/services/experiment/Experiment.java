package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import org.springframework.boot.ApplicationArguments;

import java.util.List;

public interface Experiment {
    void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks);
}
