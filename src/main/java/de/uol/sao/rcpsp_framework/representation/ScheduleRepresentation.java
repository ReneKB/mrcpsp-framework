package de.uol.sao.rcpsp_framework.representation;

import de.uol.sao.rcpsp_framework.benchmark.model.Project;

import java.util.List;

public interface ScheduleRepresentation {
    /**
     * Ensures that the given schedule presentation is a correct one which holds all properties
     * for a full schedule.
     */
    void validityScheme();

    /**
     * Converts the given representation into a JobMode object
     * @return Convert result
     */
    List<JobMode> toJobMode(Project project);
}
