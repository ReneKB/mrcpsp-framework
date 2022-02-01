package de.uol.sao.mrcpsp_framework;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.BenchmarkPSPLIBMultiModeLoader;

public class ExampleBenchmarks {

    public static Benchmark loadBenchmarkTest() {
        return new BenchmarkPSPLIBMultiModeLoader().loadBenchmark("test.mm/test.mm");
    }

    public static Benchmark loadBenchmarkJ20_32() {
        return new BenchmarkPSPLIBMultiModeLoader().loadBenchmark("j20.mm/j203_2.mm");
    }

    public static Benchmark loadBenchmarkJ30_78() {
        return new BenchmarkPSPLIBMultiModeLoader().loadBenchmark("j30.mm/j307_8.mm");
    }

}
