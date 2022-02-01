package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;
import java.util.Map;

/**
 * Model class that representing a mode of an activity.
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder(toBuilder = true)
public class Mode {
    int modeId;
    int duration;
    Map<Resource, Integer> requestedResources = new HashMap<>();

    public String toString() {
        return modeId + " (" + duration + ")";
    }
}
