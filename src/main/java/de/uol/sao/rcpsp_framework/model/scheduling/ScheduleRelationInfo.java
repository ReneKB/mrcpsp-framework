package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ScheduleRelationInfo {
    Map<Job, Integer> latestFinishingTime = new HashMap<>();
    Map<Job, Integer> latestStartingTime = new HashMap<>();
    Map<Job, Integer> earliestFinishingTime = new HashMap<>();
    Map<Job, Integer> earliestStartingTime = new HashMap<>();
}
