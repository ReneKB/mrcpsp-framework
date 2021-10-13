package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.helper.BenchmarkHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PriorityListSchemeRepresentation implements ScheduleRepresentation {
    int[] activities; // equals \lambda acc. to literature
    int[] modes; // equals \mu acc. to literature

    @Override
    public Schedule buildScheme() {
        return null;
    }

    @Override
    public void validityScheme() {

    }

    @Override
    public List<JobMode> toJobMode(Project project) {
        List<JobMode> jobModes = new ArrayList<>();
        for (int i = 0; i < modes.length; i++) {
            Job job = BenchmarkHelper.getJobFromBenchmark(project, activities[i]).get();
            Mode mode = BenchmarkHelper.getModeFromJob(job, modes[i]).get();
            jobModes.add(new JobMode(job, mode));
        }
        return jobModes;
    }

}
