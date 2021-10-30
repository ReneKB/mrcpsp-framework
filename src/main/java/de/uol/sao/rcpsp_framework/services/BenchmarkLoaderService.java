package de.uol.sao.rcpsp_framework.services;

import de.uol.sao.rcpsp_framework.exceptions.UnsupportedBenchmarkException;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.OptimumReference;
import de.uol.sao.rcpsp_framework.services.benchmark.BenchmarkLoader;
import de.uol.sao.rcpsp_framework.services.benchmark.BenchmarkPSPLIBMultiModeLoader;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Map;

@Service
@Log4j2
public class BenchmarkLoaderService implements BenchmarkLoader {

    /**
     * Available Benchmark Loaders needs to be defined here. According to the file ending, the proper loader
     * will be selected.
     */
    Map<String, BenchmarkLoader> availableLoaders = Map.of(
        ".mm", new BenchmarkPSPLIBMultiModeLoader()
    );

    /**
     * Selects a benchmark according the file name
     * @param file filename inside the resource class path
     * @return The proper benchmark according to the file appix
     * @throws UnsupportedBenchmarkException
     */
    public BenchmarkLoader selectBenchmarkLoader(String file) throws UnsupportedBenchmarkException {
        for (Map.Entry<String, BenchmarkLoader> availableLoaderEntry : availableLoaders.entrySet()) {
            if (file.endsWith(availableLoaderEntry.getKey()))
                return availableLoaderEntry.getValue();
        }
        throw new UnsupportedBenchmarkException();
    }

    /**
     * According to the filename, the proper benchmark will be loaded.
     * @param file filename inside the resource class path
     * @return The generalized Benchmark object
     */
    @SneakyThrows
    @Override
    public Benchmark loadBenchmark(String file) {
        return selectBenchmarkLoader(file).loadBenchmark(file);
    }

    @Override
    @SneakyThrows
    public OptimumReference loadOptimum(Benchmark benchmark) throws IOException {
        return selectBenchmarkLoader(benchmark.getName()).loadOptimum(benchmark);
    }
}
