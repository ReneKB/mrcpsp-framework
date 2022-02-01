package de.uol.sao.mrcpsp_framework.function;

import de.uol.sao.mrcpsp_framework.metric.Metric;
import de.uol.sao.mrcpsp_framework.scheduling.Schedule;

/**
 * A objective function basically concerns about the fitness calculation of a single schedule
 * and/or comparing schedules with each other.
 */
public abstract class ObjectiveFunction {
    /**
     * Compares two schedules with each other. Returns true if a is a better one
     * than b, false otherwise.
     * @param a Schedule a
     * @param b Schedule b
     * @return true iff a better b, else false
     */
    public abstract boolean compare(Schedule a, Schedule b);

    /**
     * Calculates the fitness of a single schedule. E.g. necessary for Genetic Algorithm
     * and Simulated Annealing
     * @param schedule The schedule of interest
     * @return Fitness value f(x) as double value
     */
    public abstract double fitness(Schedule schedule);

    /**
     * Help method that computes a metric for a concrete schedule value and converts into a double
     * @param schedule The schedule of interest
     * @param metric The metric that wants to be known for a schedule
     * @return The value as double
     */
    protected double getValue(Schedule schedule, Metric<?> metric) {
        try {
            return Double.parseDouble(schedule.computeMetric(metric).toString());
        } catch (NullPointerException ex) {
            System.out.println(schedule.computeMetric(metric) + " NullPointerException");
            return 0;
        }
    }
}
