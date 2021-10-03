package de.uol.sao.rcpsp_framework.model.scheduling;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Interval {
    int lowerBound;
    int upperBound;
    JobMode jobMode;

    /**
     * Checks if a value is the given interval (e.g. [3, 5] for 4)
     * @param value the value (in this example 4)
     * @return Is in interval
     */
    public boolean valueInInterval(int value) {
        return value >= lowerBound && value <= upperBound;
    }

    /**
     * Checks if another interval is in conflict with
     * @param otherInterval interval to check
     * @return Is in conflict
     */
    public boolean conflictInterval(Interval otherInterval) {
        return otherInterval.valueInInterval(this.lowerBound) ||
                otherInterval.valueInInterval(this.upperBound) ||
                this.valueInInterval(otherInterval.lowerBound) ||
                this.valueInInterval(otherInterval.upperBound);
    }
}
