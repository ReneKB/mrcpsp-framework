package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
public class RandomKeySchemeRepresentation implements ScheduleRepresentation{
    double[] activities; // equals \lambda acc. to literature
    double[] modes; // equals \mu acc. to literature

    @Override
    public void validityScheme() {

    }

    @Override
    public List<JobMode> toJobMode(Project project) {
        return null;
    }
}
