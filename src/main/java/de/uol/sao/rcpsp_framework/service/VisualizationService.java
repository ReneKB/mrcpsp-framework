package de.uol.sao.rcpsp_framework.service;

import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.Benchmark;
import de.uol.sao.rcpsp_framework.benchmark.model.Activity;
import de.uol.sao.rcpsp_framework.benchmark.model.Resource;
import de.uol.sao.rcpsp_framework.scheduling.Schedule;
import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.Format;
import guru.nidi.graphviz.engine.Graphviz;
import guru.nidi.graphviz.model.Graph;
import guru.nidi.graphviz.model.Node;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.annotations.XYLineAnnotation;
import org.jfree.chart.axis.NumberAxis;
import org.jfree.chart.axis.NumberTickUnit;
import org.jfree.chart.plot.XYPlot;
import org.jfree.chart.renderer.xy.StackedXYBarRenderer;
import org.jfree.data.xy.CategoryTableXYDataset;
import org.jfree.data.xy.DefaultXYDataset;
import org.springframework.stereotype.Service;

import javax.swing.*;
import java.awt.*;
import java.awt.Color;
import java.awt.image.BufferedImage;
import java.util.*;
import java.util.List;
import java.util.stream.Collectors;

import static guru.nidi.graphviz.attribute.Rank.RankDir.LEFT_TO_RIGHT;
import static guru.nidi.graphviz.attribute.Records.rec;
import static guru.nidi.graphviz.attribute.Records.turn;
import static guru.nidi.graphviz.model.Factory.*;

@Service
public class VisualizationService {

    List<Node> generateNodes(Benchmark benchmark) {
        List<Node> nodes = new ArrayList<>();
        List<Activity> activities = benchmark.getProject().getActivities();

        // Generates job nodes
        activities.forEach(job -> {
            String id = String.valueOf(job.getActivityId());

            String modesStr = turn(job.getModes()
                    .stream().map(mode -> {
                        String durationStr = String.valueOf(mode.getDuration());
                        String reqResourceStr = mode.getRequestedResources().toString();

                        return turn(rec(durationStr + " # " + reqResourceStr));
                    }).toArray(String[]::new));
            String modeList = turn(rec(id), modesStr);

            nodes.add(node(id).with(Records.of(modeList)));
        });

        // Generate links
        for (int i = 0; i < nodes.size(); i++) {
            Node selectedNode = nodes.get(i);

            // get the successor nodes
            Activity relevantActivity = activities.get(i);

            List<Node> successorNodes = relevantActivity.getSuccessors().stream()
                    .map(Activity::getActivityId)
                    .map(integer -> nodes.stream().dropWhile(entries -> !entries.name().value().equals(integer.toString())).findFirst().get()).collect(Collectors.toList());

            // link the dependencies
            for (Node successorNode : successorNodes) {
                selectedNode = selectedNode.link(successorNode);
            }

            // save back to list
            nodes.set(i, selectedNode);
        }

        return nodes;
    }

    DefaultXYDataset generateDataset(Benchmark benchmark) {
        DefaultXYDataset dataset = new DefaultXYDataset();

        return dataset;
    }

    public void visualizeBenchmark(Benchmark benchmark) {
        // Jobs Visualization
        Graph g = graph("example1").directed()
                .graphAttr().with(Rank.dir(LEFT_TO_RIGHT))
                .linkAttr().with("class", "link-class")
                .with(this.generateNodes(benchmark));

        BufferedImage img = Graphviz.fromGraph(g).scale(1.2).render(Format.PNG).toImage();

        ImageIcon icon= new ImageIcon(img);

        JFrame frame = new JFrame();
        frame.setLayout(new FlowLayout());
        frame.setSize(img.getWidth() + 50,img.getHeight() + 50);

        JLabel lbl = new JLabel();
        lbl.setIcon(icon);

        frame.setTitle(String.format("Visualization of Jobs - Benchmark: %s, amount of jobs=%d, Horizon: %s, Available Resources: %s",
                benchmark.getName(),
                benchmark.getNumberJobs(),
                benchmark.getHorizon(),
                benchmark.getProject().getAvailableResources()));

        frame.add(lbl);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void visualizeSchedule(Schedule schedule) {
        Benchmark benchmark = schedule.getBenchmark();
        Map<Resource, Integer> resourceIntegerMap = benchmark.getProject().getAvailableResources();
        resourceIntegerMap.forEach((resource, availableResource) -> {
            CategoryTableXYDataset dataset = new CategoryTableXYDataset();

            ScheduleHelper.getFullSchedulePlan(schedule).forEach((resourceOfPlan, intervals) -> {
                intervals.forEach(interval -> {
                    for (int t = interval.getLowerBound(); t <= interval.getUpperBound(); t++) {
                        if (resourceOfPlan.toString().equals(resource.toString())) {
                            dataset.add(t + 1, interval.getAmount(), interval.getSource().getActivity().toString());
                        }
                    }
                });
            });

            XYPlot plot = new XYPlot(dataset, new NumberAxis("time in t"), new NumberAxis("resource usage in units"), new StackedXYBarRenderer());

            JFreeChart chart = new JFreeChart(plot);
            ChartPanel chartPanel = new ChartPanel(chart);
            chart.setTitle(String.format("Usage of Resource %s", resource, availableResource));

            // Horizontal line
            XYLineAnnotation line = new XYLineAnnotation(0,
                    availableResource,
                    benchmark.getHorizon(),
                    availableResource,
                    new BasicStroke(2.0f),
                    Color.black);
            plot.addAnnotation(line);

            // Domain axis
            NumberAxis domain = (NumberAxis) plot.getDomainAxis();
            domain.setRange(1, benchmark.getHorizon());
            domain.setVerticalTickLabels(true);
            domain.setTickUnit(new NumberTickUnit(1));

            // Range axis
            NumberAxis range = (NumberAxis) plot.getRangeAxis();
            range.setRange(0.0, availableResource + 1);
            range.setTickUnit(new NumberTickUnit(1));

            JFrame frame = new JFrame(String.format("Results - Usage of Resource %s (max. available: %d)", resource, availableResource));
            frame.setContentPane(chartPanel);
            frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            frame.pack();
            frame.setSize(500, 500);
            frame.setLocationRelativeTo(null);
            frame.setVisible(true);
        });
    }

}
