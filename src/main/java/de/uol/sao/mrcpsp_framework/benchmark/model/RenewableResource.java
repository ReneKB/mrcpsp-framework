package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

/**
 * Model class that representing a renewable resource
 */
@Data
@SuperBuilder(toBuilder = true)
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class RenewableResource extends Resource {
    public String toString() {
        return "R " + super.getResourceId();
    }
}
