package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
public abstract class Resource {
    int resourceId;
}