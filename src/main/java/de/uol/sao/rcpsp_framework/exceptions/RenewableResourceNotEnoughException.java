package de.uol.sao.rcpsp_framework.exceptions;

public class RenewableResourceNotEnoughException extends Exception {
    public RenewableResourceNotEnoughException() {
        super(String.format("Not enough renewable resources available. "));
    }
}
