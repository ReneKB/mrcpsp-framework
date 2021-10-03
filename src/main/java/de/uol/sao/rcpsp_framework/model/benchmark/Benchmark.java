package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Benchmark {
    Project project;
    String name;

    int numberJobs;
    int horizon;
}
