package de.uol.sao.rcpsp_framework.benchmark.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder(toBuilder = true)
@NoArgsConstructor
public abstract class Resource {
    int resourceId;
}
