package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ActivityListSchemeRepresentation implements ScheduleRepresentation {
    int[] activities; // equals λ acc. to literature
    int[] modes; // equals µ acc. to literature

    @Override
    public void validityScheme() {

    }

    @Override
    public List<JobMode> toJobMode(Project project) {
        List<JobMode> jobModes = new ArrayList<>();
        for (int i = 0; i < modes.length; i++) {
            Job job = ProjectHelper.getJobFromProject(project, activities[i]).get();
            Mode mode = ProjectHelper.getModeFromJob(job, modes[i]).get();
            jobModes.add(new JobMode(job, mode));
        }
        return jobModes;
    }

    public String toString() {
        return String.format("λ: %s, µ: %s", Arrays.toString(activities), Arrays.toString(modes));
    }

}
