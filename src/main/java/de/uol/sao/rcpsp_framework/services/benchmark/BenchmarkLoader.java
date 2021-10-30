package de.uol.sao.rcpsp_framework.services.benchmark;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.OptimumReference;

import java.io.IOException;

public interface BenchmarkLoader {
    Benchmark loadBenchmark(String file);
    OptimumReference loadOptimum(Benchmark benchmark) throws IOException;
}
