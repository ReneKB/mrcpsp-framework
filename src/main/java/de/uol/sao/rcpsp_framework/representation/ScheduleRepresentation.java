package de.uol.sao.rcpsp_framework.representation;

import de.uol.sao.rcpsp_framework.benchmark.model.Project;

import java.util.List;

public interface ScheduleRepresentation {
    /**
     * Converts the given representation into a JobMode object
     * @return Convert result
     */
    List<ActivityMode> toActivityModeList(Project project);
}
