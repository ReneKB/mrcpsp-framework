package de.uol.sao.rcpsp_framework.model.scheduling;

import java.util.List;

public class RandomKeySchemeRepresentation implements ScheduleRepresentation{
    double[] activities; // equals \lambda acc. to literature
    int[] modes; // equals \mu acc. to literature

    @Override
    public Schedule buildScheme() {
        return null;
    }

    @Override
    public void validityScheme() {

    }

    @Override
    public List<JobMode> toJobMode() {
        return null;
    }
}
