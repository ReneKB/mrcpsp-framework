package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * Model class that representing an activity (or job) of a project plan.
 */
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
