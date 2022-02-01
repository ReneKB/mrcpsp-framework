package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Model class that representing a benchmark. It includes a project description and metadata like the name,
 * the number of jobs and the horizon. Can be instantiated with the BenchmarkLoader.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class Benchmark {
    Project project;
    String name;

    int numberJobs;
    int horizon;
}
