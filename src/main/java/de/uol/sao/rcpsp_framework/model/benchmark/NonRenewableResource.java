package de.uol.sao.rcpsp_framework.model.benchmark;

import lombok.*;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class NonRenewableResource extends Resource {
    public String toString() {
        return "N " + super.getResourceId();
    }
}
