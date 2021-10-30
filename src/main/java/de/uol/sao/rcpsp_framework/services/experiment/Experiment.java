package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.ApplicationArguments;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public interface Experiment {
    void runExperiments(ApplicationArguments args, List<Benchmark> benchmarks);
}
