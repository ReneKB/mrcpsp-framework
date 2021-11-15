package de.uol.sao.rcpsp_framework.model.metrics;


public class Metrics {
    public static final Metric<Integer> MAKESPAN = new Makespan();
    public static final Metric<Integer> RM1 = new RobustMeasure1();
    public static final Metric<Double> RM2 = new RobustMeasure2();

    public static <T> Metric<T> getMetricByName(String name) {
        Metric<T> metric = null;
        switch (name) {
            case "Makespan":
                metric = (Metric<T>) MAKESPAN;
                break;
            case "RobustMeasure1":
                metric = (Metric<T>) RM1;
                break;
            case "RobustMeasure2":
                metric = (Metric<T>) RM2;
                break;
        }
        return metric;
    }
}
