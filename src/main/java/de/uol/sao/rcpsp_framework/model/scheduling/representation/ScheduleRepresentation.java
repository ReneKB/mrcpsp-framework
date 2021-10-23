package de.uol.sao.rcpsp_framework.model.scheduling.representation;

import de.uol.sao.rcpsp_framework.model.benchmark.Project;

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