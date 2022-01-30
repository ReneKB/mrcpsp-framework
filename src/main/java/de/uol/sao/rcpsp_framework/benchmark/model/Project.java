package de.uol.sao.rcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

/**
 * Model class that representing a project plan including activities and the given information of resources
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class Project {
    int projectId;
    List<Activity> activities;
    Map<Resource, Integer> availableResources;
}
