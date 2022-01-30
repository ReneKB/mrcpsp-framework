package de.uol.sao.rcpsp_framework.scheduling;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SchedulePlanInfo {
    Map<Activity, Integer> latestFinishingTime = new HashMap<>();
    Map<Activity, Integer> latestStartingTime = new HashMap<>();
    Map<Activity, Integer> earliestFinishingTime = new HashMap<>();
    Map<Activity, Integer> earliestStartingTime = new HashMap<>();
}
