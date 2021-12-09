package de.uol.sao.rcpsp_framework.service;

import de.uol.sao.rcpsp_framework.helper.FileHelper;
import de.uol.sao.rcpsp_framework.helper.StatisticValue;
import de.uol.sao.rcpsp_framework.metric.Metric;
import de.uol.sao.rcpsp_framework.scheduling.UncertaintyModel;
import de.uol.sao.rcpsp_framework.experiment.RobustnessExperiment;
import de.uol.sao.rcpsp_framework.experiment.SolverPerformanceComparisonExperiment;
import de.uol.sao.rcpsp_framework.experiment.UncertaintyExperiment;
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
                                                   List<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry> feasibleOptimalEntries,
                                                   List<String> solvers,
                                                   List<Integer> iterations,
                                                   int amountBenchmarks) {

        return this.printLatexTableSolverPerformanceMakespanRobustnessTable(templateName, benchmarkname, makespanValues, robustnessValues, solvers, iterations) + "\n\n" +
               this.printLatexTableSolverPerformanceFeasibleOptimumTable(templateName, benchmarkname, feasibleOptimalEntries, solvers, iterations, amountBenchmarks);
    }


    @SneakyThrows
    public String printLatexTableSolverPerformanceMakespanRobustnessTable(String templateName,
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
            headerLine.append(String.format("\\multicolumn{2}{c|}{\\textbf{%s}}", solvers.get(i)));
            if (i != solvers.size() - 1)
                headerLine.append(" & ");

            tableStructure.append("cc|");
        }

        body.append(this.printLatexTableSolverMakespanRobustnessBlock(makespanValues, robustnessValues, solvers, iterations));

        contentTemplate = contentTemplate.replace("#TABLESTRUCTURE", tableStructure.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_HEADER", headerLine.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_BODY", body.toString());
        contentTemplate = contentTemplate.replace("#BENCHMARKNAME", benchmarkname);
        contentTemplate = contentTemplate.replace("#COLUMN", String.valueOf(solvers.size() * 2 + 1));

        return contentTemplate;
    }


    @SneakyThrows
    public String printLatexTableSolverPerformanceFeasibleOptimumTable(String templateName,
                                                                       String benchmarkname,
                                                                       List<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry> feasibleOptimalEntries,
                                                                       List<String> solvers,
                                                                       List<Integer> iterations,
                                                                       int amountBenchmarks) {
        String contentTemplate = this.getFileTemplate(templateName);
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();
        StringBuilder tableStructure = new StringBuilder("r|");

        for (int i = 0; i < solvers.size(); i++) {
            headerLine.append(String.format("\\multicolumn{2}{c|}{\\textbf{%s}}", solvers.get(i)));
            if (i != solvers.size() - 1)
                headerLine.append(" & ");

            tableStructure.append("cc|");
        }

        body.append(this.printLatexTableSolverFeasibleOptimumBlock(feasibleOptimalEntries, solvers, iterations, amountBenchmarks));

        contentTemplate = contentTemplate.replace("#TABLESTRUCTURE", tableStructure.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_HEADER", headerLine.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_BODY", body.toString());
        contentTemplate = contentTemplate.replace("#BENCHMARKNAME", benchmarkname);
        contentTemplate = contentTemplate.replace("#COLUMN", String.valueOf(solvers.size() * 2 + 1));

        return contentTemplate;
    }

    private String printLatexTableSolverMakespanRobustnessBlock(Map<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry, StatisticValue> makespanValues,
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
                        new SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry(null, iteration, solver, null, 0, 0);
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


    private String printLatexTableSolverFeasibleOptimumBlock(List<SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry> feasibleOptimalEntries,
                                                             List<String> solvers,
                                                             List<Integer> iterations,
                                                             int amountBenchmarks) {
        StringBuilder builder = new StringBuilder();
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();

        headerLine.append("\\multicolumn{1}{|r|}{Iterations}");
        headerLine.append(" & \\multicolumn{1}{c}{Feasible} & \\multicolumn{1}{c|}{Optimal}".repeat(solvers.size()));
        headerLine.append(" \\\\ \\hline ");

        int i = 0;
        for (Integer iteration : iterations) {
            body.append(String.format("\\multicolumn{1}{|r|}{n = %d} ", iteration));
            for (String solver : solvers) {
                SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry solverPerformanceResultEntry =
                        new SolverPerformanceComparisonExperiment.SolverPerformanceResultEntry(null, iteration, solver, null, 0, 0);

                int feasibleSolutions = feasibleOptimalEntries.get(feasibleOptimalEntries.indexOf(solverPerformanceResultEntry)).getFeasible();
                int optimalSolutions = feasibleOptimalEntries.get(feasibleOptimalEntries.indexOf(solverPerformanceResultEntry)).getOptimal();

                body.append(String.format(" & %s (%.0f\\%%) & %s (%.0f\\%%)",
                        feasibleSolutions,
                        (double) feasibleSolutions / amountBenchmarks * 100,
                        optimalSolutions,
                        (double) optimalSolutions / amountBenchmarks * 100));
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
    public String printLatexTableRobustness(String templateName,
                                             Map<RobustnessExperiment.ExperimentResult, StatisticValue> values,
                                             List<String> solvers,
                                             List<UncertaintyModel> uncertaintyModels,
                                             List<Metric> robustnessMetrics,
                                             List<Integer> iterations) {
        String contentTemplate = this.getFileTemplate(templateName);
        StringBuilder headerLine = new StringBuilder("\\multicolumn{1}{l|}{} &");
        StringBuilder body = new StringBuilder();
        StringBuilder tableStructure = new StringBuilder("r|");
        StringBuilder subheader = new StringBuilder("\\multicolumn{1}{l|}{} &");

        for (int i = 0; i < solvers.size(); i++) {
            headerLine.append(String.format("\\multicolumn{%d}{c|}{\\textbf{%s}}", robustnessMetrics.size(), solvers.get(i)));
            if (i != solvers.size() - 1)
                headerLine.append(" & ");

            for (int j = 0; j < robustnessMetrics.size(); j++) {
                Metric robustnessMetric = robustnessMetrics.get(j);
                subheader.append(String.format("\\multicolumn{1}{l|}{%s} ", robustnessMetric == null ? "No RM" :
                        robustnessMetric.toString().replace("_", "-")));
                if (j != robustnessMetrics.size() - 1)
                    subheader.append(" & ");
            }

            tableStructure.append("r".repeat(robustnessMetrics.size()));
            tableStructure.append("|");
        }

        for (UncertaintyModel uncertaintyModel : uncertaintyModels) {
            String bodyElement = this.printLatexTableRobustnessBlock(values, uncertaintyModel, solvers, iterations, robustnessMetrics);
            body.append(bodyElement);
        }

        contentTemplate = contentTemplate.replace("#TABLESTRUCTURE", tableStructure.toString());
        contentTemplate = contentTemplate.replace("#SUBHEADER", subheader.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_HEADER", headerLine.toString());
        contentTemplate = contentTemplate.replace("#SOLVERS_BODY", body.toString());
        contentTemplate = contentTemplate.replace("#COLUMN", String.valueOf(solvers.size() * robustnessMetrics.size()  + 1));

        return contentTemplate;
    }


    private String printLatexTableRobustnessBlock(Map<RobustnessExperiment.ExperimentResult, StatisticValue> values,
                                                   UncertaintyModel uncertaintyModel,
                                                   List<String> solvers,
                                                   List<Integer> iterations,
                                                   List<Metric> robustnessMetrics) {
        StringBuilder builder = new StringBuilder();
        StringBuilder headerLine = new StringBuilder();
        StringBuilder body = new StringBuilder();

        headerLine.append(String.format("\\multicolumn{1}{|r|}{\\textbf{Uncertainty %d\\%%}}", (int) (uncertaintyModel.getModeDelayDistribution().getProbabilityOfSuccess() * 100)));
        headerLine.append(" & \\multicolumn{1}{r|}{}".repeat(solvers.size() * robustnessMetrics.size()));
        headerLine.append(" \\\\ ");

        int i = 0;
        for (Integer iteration : iterations) {
            body.append(String.format("\\multicolumn{1}{|r|}{n = %d} ", iteration));
            for (String solver : solvers) {
                for (Metric metric : robustnessMetrics) {
                    RobustnessExperiment.ExperimentResult experimentResult = new RobustnessExperiment.ExperimentResult(iteration,
                            solver,
                            uncertaintyModel,
                            metric);
                    StatisticValue statisticValue = values.get(experimentResult);
                    body.append(String.format(" & \\multicolumn{1}{r|}{%s} ", statisticValue));
                }
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
