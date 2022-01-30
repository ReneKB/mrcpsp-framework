package de.uol.sao.rcpsp_framework.exception;

import de.uol.sao.rcpsp_framework.benchmark.model.Resource;

/**
 * Exception that will be thrown if not enough renewable resources are available than required
 */
public class RenewableResourceNotEnoughException extends Exception {

    /**
     * Constructor that just returns the message of having not enough renewable resources.
     */
    public RenewableResourceNotEnoughException(Resource resource) {
        super(String.format("Not enough renewable resources available. Resource %s", resource));
    }
}
