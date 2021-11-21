package de.uol.sao.rcpsp_framework.helper;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class StatisticValue {
    double mean;
    double stddev;

    public String toString() {
        return String.format("%.2f (± %.2f)", mean, stddev);
    }
}
