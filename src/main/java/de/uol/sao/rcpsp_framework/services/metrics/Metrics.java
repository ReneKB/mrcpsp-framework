package de.uol.sao.rcpsp_framework.services.metrics;


public class Metrics {
    public static final Metric<Integer> MAKESPAN = new Makespan();
    public static final Metric<Integer> RM1 = new RobustMeasure1();

    public static <T> Metric<T> getMetricByName(String name) {
        Metric<T> metric = null;
        switch (name) {
            case "Makespan":
                metric = (Metric<T>) MAKESPAN;
                break;
            case "RobustMeasure1":
                metric = (Metric<T>) RM1;
                break;
        }
        return metric;
    }
}
