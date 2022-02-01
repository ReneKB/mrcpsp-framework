package de.uol.sao.mrcpsp_framework.scheduling;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.commons.math3.distribution.BinomialDistribution;

/**
 * The uncertainty model
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class UncertaintyModel {
    BinomialDistribution modeDelayDistribution;

    public int computeActualDuration(int duration) {
        return duration + modeDelayDistribution.sample();
    }

    public String toString() {
        return String.format("Uncertainty p=%.2f", modeDelayDistribution.getProbabilityOfSuccess());
    }
}
