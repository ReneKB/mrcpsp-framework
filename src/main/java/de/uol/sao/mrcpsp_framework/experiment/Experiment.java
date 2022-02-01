package de.uol.sao.mrcpsp_framework.experiment;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import org.springframework.boot.ApplicationArguments;

import java.util.List;

public interface Experiment {
    void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks);
}
