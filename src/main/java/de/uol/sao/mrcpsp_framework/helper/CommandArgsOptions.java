package de.uol.sao.mrcpsp_framework.helper;

import lombok.Getter;

import java.util.Arrays;

/**
 * All available programs args options are listed here
 */
public enum CommandArgsOptions {
    VISUALIZE("visualize"),
    SOURCE("source"),
    ITERATIONS("iterations"),
    SOLVERS("solvers"),
    EXPERIMENT_N("n"),
    EXPERIMENT("experiment"),
    ROBUST("robust"),
    LIMIT("limit"),
    SERVER("server"),
    PARALLEL("parallel"),
    NONE("none");

    @Getter
    private final String commandStr;

    CommandArgsOptions(String commandStr) {
        this.commandStr = commandStr;
    }

    public static CommandArgsOptions fromString(String text) {
        return Arrays.stream(CommandArgsOptions.values())
                .filter(b -> b.commandStr.equalsIgnoreCase(text))
                .findFirst()
                .orElse(NONE);
    }
}
