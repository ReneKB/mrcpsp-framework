package de.uol.sao.rcpsp_framework.services;

import de.uol.sao.rcpsp_framework.helper.FileHelper;
import de.uol.sao.rcpsp_framework.helper.StatisticValue;
import de.uol.sao.rcpsp_framework.model.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.services.experiment.SolverPerformanceComparisonExperiment;
import de.uol.sao.rcpsp_framework.services.experiment.UncertaintyExperiment;
import lombok.SneakyThrows;
import org.springframework.stereotype.Service;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

@Service
public class LatexService {

    @SneakyThrows
    public String printLatexTableUncertainty(String templateName,
                                             Map<UncertaintyExperiment.ExperimentResult, StatisticValue> values,
                                             List<String> solvers,
                                             List<UncertaintyModel> uncertaintyModels,
                                             List<Integer> iterations) {
        String contentTemplate = this.getFileTemplate(templateName);
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();
        StringBuilder tableStructure = new StringBuilder("r|");

        for (int i = 0; i < solvers.size(); i++) {
            headerLine.append(String.format("\\multicolumn{1}{l|}{\\textbf{%s}}", solvers.get(i)));
            if (i != solvers.size() - 1)
                headerLine.append(" & ");

            tableStructure.append("r|");
        }

        for (UncertaintyModel uncertaintyModel : uncertaintyModels) {
            String bodyElement = this.printLatexTableUncertaintyBlock(values, uncertaintyModel, solvers, iterations);
            body.append(bodyElement);
        }

        contentTemplate = contentTemplate.replace("#TABLESTRUCTURE", tableStructure.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_HEADER", headerLine.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_BODY", body.toString());
        contentTemplate = contentTemplate.replace("#COLUMN", String.valueOf(solvers.size() + 1));

        return contentTemplate;
    }

    private String printLatexTableUncertaintyBlock(Map<UncertaintyExperiment.ExperimentResult, StatisticValue> values,
                                                   UncertaintyModel uncertaintyModel,
                                                   List<String> solvers,
                                                   List<Integer> iterations) {
        StringBuilder builder = new StringBuilder();
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();

        headerLine.append(String.format("\\multicolumn{1}{|r|}{\\textbf{Uncertainty %d\\%%}}", (int) (uncertaintyModel.getModeDelayDistribution().getProbabilityOfSuccess() * 100)));
        headerLine.append(" & \\multicolumn{1}{l|}{}".repeat(solvers.size()));
        headerLine.append(" \\\\ ");

        int i = 0;
        for (Integer iteration : iterations) {
            body.append(String.format("\\multicolumn{1}{|r|}{n = %d} ", iteration));
            for (String solver : solvers) {
                UncertaintyExperiment.ExperimentResult experimentResult = new UncertaintyExperiment.ExperimentResult(iteration, solver, uncertaintyModel);
                StatisticValue statisticValue = values.get(experimentResult);
                body.append(String.format(" & %s", statisticValue));
            }
            body.append(" \\\\");
            if (i == iterations.size() - 1)
                body.append(" \\hline");
            body.append("\n");
            i++;
        }
        builder.append(headerLine);
        builder.append(body);
        return builder.toString();
    }


    @SneakyThrows
    public String printLatexTableSolverPerformance(String templateName,
                                                   String benchmarkname,
                                                   Map<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry, StatisticValue> makespanValues,
                                                   Map<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry, StatisticValue> robustnessValues,
                                                   List<String> solvers,
                                                   List<Integer> iterations) {
        String contentTemplate = this.getFileTemplate(templateName);
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();
        StringBuilder tableStructure = new StringBuilder("r|");

        for (int i = 0; i < solvers.size(); i++) {
            headerLine.append(String.format("\\multicolumn{2}{l|}{\\textbf{%s}}", solvers.get(i)));
            if (i != solvers.size() - 1)
                headerLine.append(" & ");

            tableStructure.append("rr|");
        }

        body.append(this.printLatexTableSolverBlock(makespanValues, robustnessValues, solvers, iterations));

        contentTemplate = contentTemplate.replace("#TABLESTRUCTURE", tableStructure.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_HEADER", headerLine.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_BODY", body.toString());
        contentTemplate = contentTemplate.replace("#BENCHMARKNAME", benchmarkname);
        contentTemplate = contentTemplate.replace("#COLUMN", String.valueOf(solvers.size() * 2 + 1));

        return contentTemplate;
    }

    private String printLatexTableSolverBlock(Map<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry, StatisticValue> makespanValues,
                                              Map<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry, StatisticValue> robustnessValues,
                                              List<String> solvers,
                                              List<Integer> iterations) {
        StringBuilder builder = new StringBuilder();
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();

        headerLine.append("\\multicolumn{1}{|r|}{Iterations}");
        headerLine.append(" & \\multicolumn{1}{c}{Makespan} & \\multicolumn{1}{c|}{Robustness}".repeat(solvers.size()));
        headerLine.append(" \\\\ \\hline ");

        int i = 0;
        for (Integer iteration : iterations) {
            body.append(String.format("\\multicolumn{1}{|r|}{n = %d} ", iteration));
            for (String solver : solvers) {
                SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry solverPerformanceResultEntry =
                        new SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry(null, iteration, solver, null);
                StatisticValue makespanStatistic = makespanValues.get(solverPerformanceResultEntry);
                StatisticValue robustnessStatistic = robustnessValues   .get(solverPerformanceResultEntry);

                body.append(String.format(" & %s & %s", makespanStatistic, robustnessStatistic));
            }
            body.append(" \\\\");
            if (i == iterations.size() - 1)
                body.append(" \\hline");
            body.append("\n");
            i++;
        }
        builder.append(headerLine);
        builder.append(body);
        return builder.toString();
    }

    @SneakyThrows
    private String getFileTemplate(String templateName) {
        return Files.readString(Paths.get(FileHelper.getFile(templateName).toURI()));
    }
}
