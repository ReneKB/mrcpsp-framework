package de.uol.sao.rcpsp_framework.exception;

import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.Resource;

import java.util.Map;

public class NoNonRenewableResourcesLeftException extends Exception {
    public NoNonRenewableResourcesLeftException(Activity activity, Map<Resource, Integer> left) {
        super(String.format("No non renewable resources left. Job %s, Left Resources %s", activity, left));
    }

    public NoNonRenewableResourcesLeftException(Activity activity) {
        super(String.format("No non renewable resources left. Job %s", activity));
    }
}
