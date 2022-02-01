package de.uol.sao.mrcpsp_framework.benchmark;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.OptimumReference;

import java.io.IOException;

/**
 * Interface of a generic benchmark loader. The basic task of a benchmark loader is to load a benchmark
 * according a file and to load an optimum value of a given benchmark
 */
public interface BenchmarkLoader {

    /**
     * Loads a benchmark from a file path.
     * @param filePath An absolute (or relative) file path
     * @return A Benchmark relating the file path
     */
    Benchmark loadBenchmark(String filePath);

    /**
     * Fetch information regarding the global optimum of a benchmark
     * @param benchmark The benchmark of concern
     * @return An {@link OptimumReference} that contains information regarding the global optimum.
     * @throws IOException If loading issues occurs
     */
    OptimumReference loadOptimum(Benchmark benchmark) throws IOException;
}
