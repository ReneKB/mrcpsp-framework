package de.uol.sao.rcpsp_framework.helper;

import java.util.List;

public class MathHelper {

    public static double calculateMeanFromIntegerList(List<Integer> integers) {
        int sum = integers.stream().reduce(Integer::sum).orElse(0);
        return (double) sum / integers.size();
    }

    public static double calculateMeanFromDoubleList(List<Double> doubles) {
        double sum = doubles.stream().reduce(Double::sum).orElse(0.0);
        return sum / doubles.size();
    }

    public static double calculateStdDevFromIntegerList(List<Integer> integers, double mean) {
        double stddev = 0;
        for (int value : integers) {
            stddev += Math.pow((value - mean), 2);
        }
        stddev /= integers.size();
        return Math.sqrt(stddev);
    }

    public static double calculateStdDevFromDoubleList(List<Double> doubles, double mean) {
        double stddev = 0;
        for (double value : doubles) {
            stddev += Math.pow((value - mean), 2);
        }
        stddev /= doubles.size();
        return Math.sqrt(stddev);
    }
}
