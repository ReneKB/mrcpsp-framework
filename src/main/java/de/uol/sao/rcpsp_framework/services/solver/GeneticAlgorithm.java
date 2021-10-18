package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.helper.BenchmarkHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.scheduling.PriorityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import de.uol.sao.rcpsp_framework.model.scheduling.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.metrics.Metrics;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.stream.Collectors;

@Log4j2
@Service("GeneticAlgorithm")
public class GeneticAlgorithm implements Solver {
    @Autowired
    SchedulerService schedulerService;

    @Autowired
    RandomSolver randomSolver;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations) {
        int populationSize = 50;
        List<Schedule> population = this.initialPopulation(benchmark, populationSize);

        for (int i = 0; i < iterations; i++) {
            List<ScheduleRepresentation> parents = this.selectParents(population.stream().map(Schedule::getScheduleRepresentation).collect(Collectors.toList()));
            ScheduleRepresentation crossovered = this.crossover(parents);
            ScheduleRepresentation mutation = this.mutation(crossovered);

            System.out.println(parents);

        }

        Schedule bestSolution = population.isEmpty() ? null : population.stream().sorted(Comparator.comparingInt(schedule -> schedule.computeMetric(Metrics.MAKESPAN))).findFirst().get();
        System.out.println(bestSolution.computeMetric(Metrics.MAKESPAN));
        return bestSolution;
    }

    private List<ScheduleRepresentation> selectParents(List<ScheduleRepresentation> population) {
        Collections.shuffle(population);
        List<ScheduleRepresentation> newList = new ArrayList<>();
        Collections.addAll(newList, population.get(0), population.get(1));
        return newList;
    }

    private ScheduleRepresentation crossover(List<ScheduleRepresentation> schedules) {
        return null;
    }

    private ScheduleRepresentation mutation(ScheduleRepresentation offspring) {
        return null;
    }

    private List<ScheduleRepresentation> select(List<ScheduleRepresentation> population, int amount) {
        return null;
    }

    private List<Schedule> initialPopulation(Benchmark benchmark, int amount) {
        List<Schedule> population = new ArrayList<>();
        for (int i = 0; i < amount; i++) {
            population.add(randomSolver.algorithm(benchmark, 1));
        }
        return population;
    }
}
