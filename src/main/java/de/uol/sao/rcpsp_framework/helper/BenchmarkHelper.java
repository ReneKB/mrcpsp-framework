package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;

import java.util.Optional;

public class BenchmarkHelper {

    public static Optional<Job> getJobFromBenchmark(Benchmark benchmark, int jobId) {
        return benchmark.getProject().getJobs().stream().filter(job -> job.getJobId() == jobId).findFirst();
    }

    public static Optional<Mode> getModeFromJob(Job job, int modeId) {
        return job.getModes().stream().filter(mode -> mode.getModeId() == modeId).findFirst();
    }

}
