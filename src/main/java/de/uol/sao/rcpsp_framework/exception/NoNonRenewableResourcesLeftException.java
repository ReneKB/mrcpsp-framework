package de.uol.sao.rcpsp_framework.exception;

import de.uol.sao.rcpsp_framework.benchmark.model.Job;
import de.uol.sao.rcpsp_framework.benchmark.model.Resource;

import java.util.Map;

public class NoNonRenewableResourcesLeftException extends Exception {
    public NoNonRenewableResourcesLeftException(Job job, Map<Resource, Integer> left) {
        super(String.format("No non renewable resources left. Job %s, Left Resources %s", job, left));
    }

    public NoNonRenewableResourcesLeftException(Job job) {
        super(String.format("No non renewable resources left. Job %s", job));
    }
}
