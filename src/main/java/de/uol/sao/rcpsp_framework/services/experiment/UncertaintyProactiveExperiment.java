package de.uol.sao.rcpsp_framework.services.experiment;

import de.uol.sao.rcpsp_framework.model.metrics.Metric;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service("UncertaintyProactiveExperiment")
@Log4j2
public class UncertaintyProactiveExperiment extends UncertaintyPredictiveExperiment {

    @Override
    public Metric<?> robustnessMeasurementInSolver(Metric<?> robustnessMeasurement) {
        return null;
    }
}
