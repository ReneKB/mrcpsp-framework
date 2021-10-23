package de.uol.sao.rcpsp_framework.services;

import de.uol.sao.rcpsp_framework.helper.CommandArgsOptions;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.services.experiment.ExperimentService;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.concurrent.Executors;

@Component
@Log4j2
public class CommandRunnerComponent implements ApplicationRunner {

    @Autowired
    BenchmarkLoaderService benchmarkLoaderService;

    @Autowired
    ExperimentService experimentService;

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    VisualizationService visualizationService;

    @Override
    public void run(ApplicationArguments args) {
        Benchmark benchmark = loadBenchmarkFromArgs(args, args.getOptionNames(),  "n0.mm/n01_2.mm");

        Executors.newSingleThreadExecutor().execute(() -> runInputThread(benchmark));
        experimentService.runExperiments(args, benchmark);
    }

    private Benchmark loadBenchmarkFromArgs(ApplicationArguments args, Set<String> options, String defaultBenchmarkFile) {
        for (String beginningOption : options) {
            switch (CommandArgsOptions.fromString(beginningOption)) {
                case SOURCE:
                    List<String> values = args.getOptionValues(CommandArgsOptions.SOURCE.getCommandStr());
                    if (values.size() == 0)
                        log.warn(String.format("No benchmark file specified. %s will be set as default benchmark. " +
                                "Usage: <tool> --source=/path/to/file.<mm>", defaultBenchmarkFile));
                    else
                        defaultBenchmarkFile = values.get(0);
                    break;
                default:
            }
        }

        return benchmarkLoaderService.loadBenchmark(defaultBenchmarkFile);
    }

    void runInputThread(Benchmark benchmark) {
        while (true) {
            log.info("Ready for receiving custom activity input from console! ");

            try {
                Scanner scanner = new Scanner(System.in);

                String jobList = scanner.nextLine();
                log.info("Custom modes: ");
                String modeList = scanner.nextLine();

                int[] activities = getArrayFromString(jobList);
                int[] modes = this.getArrayFromString(modeList);

                Schedule schedule = schedulerService.createScheduleProactive(benchmark, new ActivityListSchemeRepresentation(activities, modes), null);

                // Output Metrics and visualize
                log.info("Custom Schedule successfully created! ");
                ScheduleHelper.outputSchedule(schedule, Metrics.RM1);

                visualizationService.visualizeJobsBenchmark(benchmark);
                visualizationService.visualizeResults(schedule);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private int[] getArrayFromString(String jobList) {
        return Arrays.stream(jobList.substring(1, jobList.length() - 1)
                        .split(","))
                        .map(String::trim).mapToInt(Integer::parseInt).toArray();
    }
}
