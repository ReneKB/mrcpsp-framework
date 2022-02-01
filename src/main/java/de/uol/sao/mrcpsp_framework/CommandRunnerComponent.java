package de.uol.sao.mrcpsp_framework;

import de.uol.sao.mrcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.mrcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.mrcpsp_framework.helper.FileHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.service.BenchmarkLoaderService;
import de.uol.sao.mrcpsp_framework.experiment.Experiment;
import de.uol.sao.mrcpsp_framework.service.CommandLineToolService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.File;
import java.util.*;
import java.util.concurrent.Executors;
import java.util.stream.Collectors;

@Component
@Log4j2
public class CommandRunnerComponent implements ApplicationRunner {

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    @Autowired
    CommandLineToolService commandLineToolService;

    @Autowired
    BeanFactory beanFactory;

    @Override
    @SneakyThrows
    public void run(ApplicationArguments args) {
        String defaultBenchmarkUri = "j30.mm/j307_8.mm";
        List<Benchmark> benchmarks = this.loadBenchmarksFromArgs(args, args.getOptionNames(), defaultBenchmarkUri);
        List<Experiment> experiments = ExperimentHelper.getExperimentsFromArguments(args,
                Collections.singletonList(beanFactory.getBean("SolverPerformanceExperiment", Experiment.class)),
                beanFactory);

        int limit = ExperimentHelper.getLimitsFromArgs(args, benchmarks.size());
        List<Benchmark> splittedBenchmarks = benchmarks.subList(0, Math.min(benchmarks.size(), limit));

        if (!args.containsOption(CommandArgsOptions.SERVER.getCommandStr())) {
            Executors.newSingleThreadExecutor().execute(() -> commandLineToolService.runInputThread(benchmarks, args));
        }

        experiments.forEach(experiment -> {
            log.info(String.format("Run Experiment %s", experiment.getClass().getSimpleName()));
            experiment.runExperiments(args, splittedBenchmarks);
            log.info(String.format("Finished Experiment %s! ", experiment.getClass().getSimpleName()));
            log.info("");
        });
        log.info("All experiments have been finished! ");
    }

    private List<Benchmark> loadBenchmarksFromArgs(ApplicationArguments args, Set<String> options, String defaultBenchmarkUri) {
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case SOURCE:
                    List<String> values = args.getOptionValues(CommandArgsOptions.SOURCE.getCommandStr());
                    if (values.size() == 0)
                        log.warn(String.format("No benchmark file specified. %s will be set as default benchmark. " +
                                "Usage: <tool> --source=/path/to/file.<mm>", defaultBenchmarkUri));
                    else
                        defaultBenchmarkUri = values.get(0);
                    break;
                default:
            }
        }

        List<Benchmark> benchmarks = null;
        try {
            File file = FileHelper.getFile(defaultBenchmarkUri);
            if (file.isDirectory())
                benchmarks = this.loadBenchmarkSetFromArgs(defaultBenchmarkUri);
            else
                benchmarks = Collections.singletonList(benchmarkLoaderService.loadBenchmark(defaultBenchmarkUri));
        } catch (Exception e) {
            benchmarks = Collections.singletonList(benchmarkLoaderService.loadBenchmark(defaultBenchmarkUri));
        }

        return benchmarks;
    }


    private List<Benchmark> loadBenchmarkSetFromArgs(String defaultPath) {
        List<Benchmark> benchmarks = Collections.synchronizedList(new ArrayList<>());
        File file = FileHelper.getFile(defaultPath);

        if (file.exists()) {
            Arrays.stream(file.listFiles()).parallel().forEach(benchmarkFile -> {
                try {
                    benchmarks.add(benchmarkLoaderService.loadBenchmark(defaultPath + File.separatorChar + benchmarkFile.getName()));
                } catch (Exception exception) { }
            });
        }

        return benchmarks.stream().sorted((string1, string2) -> {
            int result = String.CASE_INSENSITIVE_ORDER.compare(string1.getName(), string2.getName());
            if (result == 0)
                result = string1.getName().compareTo(string2.getName());
            return result;
        }).collect(Collectors.toList());
    }

}
