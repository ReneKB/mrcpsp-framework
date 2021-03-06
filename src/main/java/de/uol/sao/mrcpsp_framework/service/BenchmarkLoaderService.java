package de.uol.sao.mrcpsp_framework.service;

import de.uol.sao.mrcpsp_framework.benchmark.BenchmarkLoader;
import de.uol.sao.mrcpsp_framework.benchmark.BenchmarkPSPLIBMultiModeLoader;
import de.uol.sao.mrcpsp_framework.exception.UnsupportedBenchmarkException;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.benchmark.model.OptimumReference;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

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
     * @param filePath filename inside the resource class path
     * @return The generalized Benchmark object
     */
    @SneakyThrows
    @Override
    public Benchmark loadBenchmark(String filePath) {
        return selectBenchmarkLoader(filePath).loadBenchmark(filePath);
    }

    @Override
    @SneakyThrows
    public OptimumReference loadOptimum(Benchmark benchmark) {
        return selectBenchmarkLoader(benchmark.getName()).loadOptimum(benchmark);
    }
}
