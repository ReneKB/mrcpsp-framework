package de.uol.sao.mrcpsp_framework.metric;


public class Metrics {
    public static final Metric<Integer> MAKESPAN = new Makespan();

    public static final Metric<Integer> SF1 = new SF1();
    public static final Metric<Integer> SF2 = new SF2();
    public static final Metric<Double> SF3 = new SF3();

    public static final Metric<Integer> SF1_W1 = new SF1_W1();
    public static final Metric<Integer> SF2_W1 = new SF2_W1();
    public static final Metric<Double> SF3_W1 = new SF3_W1();

    public static final Metric<Integer> SF1_W9 = new SF1_W9();
    public static final Metric<Integer> SF2_W9 = new SF2_W9();
    public static final Metric<Double> SF3_W9 = new SF3_W9();

    public static <T> Metric<T> getMetricByName(String name) {
        Metric<T> metric = null;
        switch (name) {
            case "Makespan":
                metric = (Metric<T>) MAKESPAN;
                break;
            case "SF1":
                metric = (Metric<T>) SF1;
                break;
            case "SF2":
                metric = (Metric<T>) SF2;
                break;
            case "SF3":
                metric = (Metric<T>) SF3;
                break;
            case "SF1_W1":
                metric = (Metric<T>) SF1_W1;
                break;
            case "SF2_W1":
                metric = (Metric<T>) SF2_W1;
                break;
            case "SF3_W1":
                metric = (Metric<T>) SF3_W1;
                break;
            case "SF1_W9":
                metric = (Metric<T>) SF1_W9;
                break;
            case "SF2_W9":
                metric = (Metric<T>) SF2_W9;
                break;
            case "SF3_W9":
                metric = (Metric<T>) SF3_W9;
                break;
        }
        return metric;
    }
}
