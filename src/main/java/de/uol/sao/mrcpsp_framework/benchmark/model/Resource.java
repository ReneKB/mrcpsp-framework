package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

/**
 * Abstract model class that representing a renewable resource which can be either a renewable
 * or a non-renewable resource
 */
@Data
@SuperBuilder(toBuilder = true)
@NoArgsConstructor
public abstract class Resource {
    int resourceId;
}
