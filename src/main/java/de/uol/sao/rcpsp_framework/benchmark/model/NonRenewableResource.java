package de.uol.sao.rcpsp_framework.benchmark.model;

import lombok.*;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder(toBuilder = true)
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class NonRenewableResource extends Resource {
    public String toString() {
        return "N " + super.getResourceId();
    }
}
