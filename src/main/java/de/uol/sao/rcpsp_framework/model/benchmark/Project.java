package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Project {
    int projectId;
    List<Job> jobs;
    Map<Resource, Integer> availableResources;
}
