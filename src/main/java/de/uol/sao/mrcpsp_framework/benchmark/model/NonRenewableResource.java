package de.uol.sao.mrcpsp_framework.benchmark.model;

import lombok.*;
import lombok.experimental.SuperBuilder;

/**
 * Model class that representing a non-renewable resource
 */
@Data
@SuperBuilder(toBuilder = true)
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class NonRenewableResource extends Resource {
    public String toString() {
        return "N " + super.getResourceId();
    }
}
