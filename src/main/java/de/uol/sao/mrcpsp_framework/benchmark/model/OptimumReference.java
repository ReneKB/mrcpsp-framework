package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * Model class that representing an optimum-reference. Can be instantiated with the BenchmarkLoader.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = "benchmark")
public class OptimumReference {
    double seconds;
    int makespan;
    Benchmark benchmark;

    public boolean isSolvable() {
        return makespan != 0 && makespan != 16384;
    }
}
