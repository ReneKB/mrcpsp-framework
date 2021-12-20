package de.uol.sao.rcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class Activity {
    int activityId;
    List<Mode> modes;
    List<Activity> successors;

    public String toString() {
        return Integer.toString(activityId);
    }
}
