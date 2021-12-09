package de.uol.sao.rcpsp_framework.exception;

public class RenewableResourceNotEnoughException extends Exception {
    public RenewableResourceNotEnoughException() {
        super(String.format("Not enough renewable resources available. "));
    }
}
