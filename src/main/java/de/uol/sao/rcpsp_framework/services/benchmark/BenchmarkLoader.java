package de.uol.sao.rcpsp_framework.services.benchmark;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;

public interface BenchmarkLoader {
    Benchmark loadBenchmark(String file);
}
