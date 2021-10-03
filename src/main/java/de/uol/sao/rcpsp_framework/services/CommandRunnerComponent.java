package de.uol.sao.rcpsp_framework.services;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;

@Component
@Log4j2
public class CommandRunnerComponent implements ApplicationRunner {

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    @Autowired
    VisualizationService visualizationService;

    @Autowired
    SchedulerService schedulerService;

    @Override
    public void run(ApplicationArguments args) {
        Set<String> options = args.getOptionNames();

        AtomicReference<String> benchmarkFilePath = new AtomicReference<>("n01_2.mm");

        // Load Benchmark
        options.forEach(beginningOption -> {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case SOURCE:
                    List<String> values = args.getOptionValues(CommandArgsOptions.SOURCE.getCommandStr());
                    if (values.size() == 0)
                        log.warn(String.format("No benchmark file specified. %s will be set as default benchmark. " +
                                "Usage: <tool> --source=/path/to/file.<mm>", benchmarkFilePath.get()));
                    else
                        benchmarkFilePath.set(values.get(0));
                    break;
                default:
            }
        });

        Benchmark benchmark = benchmarkLoaderService.loadBenchmark(benchmarkFilePath.get());

        // Actual task
        Schedule schedule = schedulerService.createSchedule(benchmark, new ArrayList<>());

        // Afterwork
        options.forEach(finalOption -> {
            switch (CommandArgsOptions.fromString(finalOption)) {
                case VISUALIZE:
                    visualizationService.visualizeJobsBenchmark(benchmark);
                    visualizationService.visualizeResults(schedule);
                    break;
                default:
            }
        });
    }
}
