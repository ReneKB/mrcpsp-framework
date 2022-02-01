package de.uol.sao.mrcpsp_framework.service;

import de.uol.sao.mrcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.mrcpsp_framework.helper.ExperimentHelper;
import de.uol.sao.mrcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.mrcpsp_framework.metric.Metric;
import de.uol.sao.mrcpsp_framework.metric.Metrics;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

@Service
@Log4j2
public class CommandLineToolService {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    VisualizationService visualizationService;

    private Benchmark selectBenchmark(List<Benchmark> benchmarkList) {
        if (benchmarkList.size() == 1)
            return benchmarkList.get(0);

        Scanner scanner = new Scanner(System.in);
        log.info(String.format("Please enter the name of the benchmark (e.g %s)", benchmarkList.get(0).getName()));

        Benchmark selectedBenchmark = null;
        while (selectedBenchmark == null) {
            String benchmarkInput = scanner.nextLine();
            selectedBenchmark = benchmarkList.stream().filter(benchmark -> benchmark.getName().equals(benchmarkInput)).findFirst().orElse(null);
            if (selectedBenchmark == null)
                log.info(String.format("Benchmark %s not found. Try again. ", benchmarkInput));
        }

        return selectedBenchmark;
    }

    private int[] selectActivityList() {
        Scanner scanner = new Scanner(System.in);

        int[] selectedActivityList = null;
        while (selectedActivityList == null) {
            log.info("Please enter the activity list (e.g [1, 2, ..., 6]): ");
            String jobList = scanner.nextLine();
            try {
                selectedActivityList = this.getArrayFromString(jobList);
            } catch (Exception ignore) { }
        }

        return selectedActivityList;
    }

    private int[] selectModeList() {
        Scanner scanner = new Scanner(System.in);

        int[] selectedModeList = null;
        while (selectedModeList == null) {
            log.info("Please enter the mode list (e.g [1, 2, 2, ..., 1]): ");
            String modeList = scanner.nextLine();
            try {
                selectedModeList = this.getArrayFromString(modeList);
            } catch (Exception ignore) { }
        }

        return selectedModeList;
    }

    public void runInputThread(List<Benchmark> benchmarks, ApplicationArguments args) {
        while (true) {
            log.info("Ready for receiving custom activity input from console! ");

            Benchmark benchmark = this.selectBenchmark(benchmarks);
            Metric<?> robustnessMetric = ExperimentHelper.getRobustMeasureFunctionFromArgs(args, Metrics.SF1);

            int[] activities = this.selectActivityList();
            int[] modes = this.selectModeList();

            try {
                Schedule schedule = schedulerService.createSchedule(benchmark, new ActivityListRepresentation(activities, modes), null);
                log.info("Custom Schedule successfully created! ");

                // Output Metrics and visualize
                ScheduleHelper.outputSchedule(schedule, robustnessMetric);
                visualizationService.visualizeBenchmark(benchmark);
                visualizationService.visualizeSchedule(schedule);
            } catch (Exception e) {
                log.info("Custom Schedule couldn't be created! Reason: " + e.getMessage());
            }
        }
    }

    private int[] getArrayFromString(String jobList) {
        return Arrays.stream(jobList.substring(1, jobList.length() - 1)
                .split(","))
                .map(String::trim).mapToInt(Integer::parseInt).toArray();
    }
}
