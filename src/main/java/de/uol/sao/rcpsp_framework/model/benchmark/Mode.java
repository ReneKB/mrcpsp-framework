package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashMap;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Mode {
    int modeId;
    int duration;
    Map<Resource, Integer> requestedResources = new HashMap<>();

    public String toString() {
        return modeId + " (" + duration + ")";
    }
}
