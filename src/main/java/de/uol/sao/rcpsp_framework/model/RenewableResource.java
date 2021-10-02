package de.uol.sao.rcpsp_framework.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
public class RenewableResource extends Resource {
    public String toString() {
        return "R " + super.getResourceId();
    }
}
