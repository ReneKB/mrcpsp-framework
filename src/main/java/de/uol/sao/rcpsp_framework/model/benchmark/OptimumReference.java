package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString(exclude = "benchmark")
public class OptimumReference {
    double seconds;
    int makespan;
    Benchmark benchmark;

    public boolean isSolvable() {
        return makespan != 0 && makespan != 16384;
    }
}
