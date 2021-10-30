package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OptimumReference {
    double seconds;
    double makespan;
    Benchmark benchmark;
}
