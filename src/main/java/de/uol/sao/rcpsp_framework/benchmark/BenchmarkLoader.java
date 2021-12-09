package de.uol.sao.rcpsp_framework.benchmark;

import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.OptimumReference;

import java.io.IOException;

public interface BenchmarkLoader {
    Benchmark loadBenchmark(String file);
    OptimumReference loadOptimum(Benchmark benchmark) throws IOException;
}
