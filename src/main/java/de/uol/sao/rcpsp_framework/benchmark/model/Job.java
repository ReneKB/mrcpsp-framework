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
public class Job {
    int jobId;
    List<Mode> modes;
    List<Job> successor;

    public String toString() {
        return Integer.toString(jobId);
    }
}
