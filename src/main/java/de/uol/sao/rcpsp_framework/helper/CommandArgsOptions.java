package de.uol.sao.rcpsp_framework.helper;

import lombok.Getter;

import java.util.Arrays;

public enum CommandArgsOptions {
    VISUALIZE("visualize"),
    SOURCE("source"),
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
