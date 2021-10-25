package de.uol.sao.rcpsp_framework.unit;

import de.uol.sao.rcpsp_framework.ExampleBenchmarks;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSelection;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.LFTHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.RandomActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.LRSHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.SFMHeuristic;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

@SpringBootTest
@RunWith(SpringJUnit4ClassRunner.class)
@Log4j2
public class HeuristicsTest {

    @Autowired
    SchedulerService schedulerService;

    @Test
    @SneakyThrows
    public void testHeuristicLFT_LRS() {
        // prepare
        Benchmark test = ExampleBenchmarks.loadBenchmarkTest();
        Heuristic lft_lrs = Heuristic.builder()
                .activityHeuristic(LFTHeuristic.class)
                .modeHeuristic(SFMHeuristic.class).build();

        // test
        ScheduleRepresentation representation = HeuristicDirector.constructScheduleRepresentation(test, lft_lrs);
        Schedule schedule = schedulerService.createScheduleProactive(test, representation, null);

        // assert

        // a) schedule is not null
        Assertions.assertNotNull(schedule);

        // b) this is rather a worse case
        Assertions.assertEquals(11, schedule.computeMetric(Metrics.MAKESPAN));
    }

    @Test
    @SneakyThrows
    public void testHeuristicSampling() {
        // prepare
        Benchmark test = ExampleBenchmarks.loadBenchmarkJ30_78();
        Heuristic lft_lrs = Heuristic.builder()
                .activityHeuristic(RandomActivityHeuristic.class)
                .modeHeuristic(LRSHeuristic.class).build();

        // test
        boolean scheduleFound = false;
        int foundAt = 0;

        for (int tryNo = 0; tryNo < 100; tryNo++) {
            try {
                ScheduleRepresentation representation = HeuristicDirector.constructScheduleRepresentation(test, lft_lrs, HeuristicSampling.REGRET_BASED_BIAS);
                Schedule schedule = schedulerService.createScheduleProactive(test, representation, null);
                if (schedule != null && !scheduleFound) {
                    scheduleFound = true;
                    foundAt = tryNo;
                }
            } catch (Exception ex) {

            }
        }

        // assert

        // a) schedule is not null
        Assertions.assertTrue(scheduleFound);
        log.info("Found at " + foundAt);
    }


    @Test
    @SneakyThrows
    public void testSampleRegretBias() {
        // prepare
        Map<Integer, Double> priorityValues = new HashMap<>();
        priorityValues.put(1, 11.0);
        priorityValues.put(2, 13.0);
        priorityValues.put(3, 20.0);

        int samplingAmount = 10000; // high amount checks robustness and ensures deterministic

        // test
        Map<Integer, Integer> sampleResults = new HashMap<>();
        for (int i = 0; i < samplingAmount; i++) {
            int jobId = HeuristicDirector.samplingRegretBasedBiasRandom(priorityValues, HeuristicSelection.MIN);
            int previousAmount = sampleResults.getOrDefault(jobId, 0);
            sampleResults.put(jobId, previousAmount + 1);
        }

        int mostSampleJobId = -1;
        int mostSampleAmount = -1;
        for (Map.Entry<Integer, Integer> entry : sampleResults.entrySet()) {
            Integer sampleId = entry.getKey();
            Integer amount = entry.getValue();

            if (mostSampleAmount < amount) {
                mostSampleAmount = amount;
                mostSampleJobId = sampleId;
            }
        }

        // assert
        // a) dominance of the lowest priority value
        Assertions.assertEquals(1 , mostSampleJobId);
    }


}
