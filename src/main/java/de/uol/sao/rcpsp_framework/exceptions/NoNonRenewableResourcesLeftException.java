package de.uol.sao.rcpsp_framework.exceptions;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;

import java.util.Map;

public class NoNonRenewableResourcesLeftException extends Exception {
    public NoNonRenewableResourcesLeftException(Job job, Map<Resource, Integer> left) {
        super(String.format("No non renewable resources left. Job %s, Left Resources %s", job, left));
    }
}