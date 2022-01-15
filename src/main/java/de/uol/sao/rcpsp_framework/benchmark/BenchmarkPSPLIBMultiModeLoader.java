package de.uol.sao.rcpsp_framework.benchmark;

import de.uol.sao.rcpsp_framework.helper.FileHelper;
import de.uol.sao.rcpsp_framework.benchmark.model.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.SneakyThrows;
import lombok.extern.log4j.Log4j2;

import java.io.*;
import java.util.*;

@Log4j2
public class BenchmarkPSPLIBMultiModeLoader implements BenchmarkLoader {

    @AllArgsConstructor
    enum CurrentSegmentState {
        BeginHeader(0),
        Header(1),
        BeginProjectMeta1(2),
        ProjectMeta1(3),
        BeginProjectMeta2(4),
        ProjectMeta2(5),
        BeginJobs(6),
        Jobs(7),
        BeginModes(8),
        Modes(9),
        BeginResourceAvailabilities(10),
        ResourceAvailabilities(11),
        End(12);

        @Getter
        private final int value;

        public static BenchmarkPSPLIBMultiModeLoader.CurrentSegmentState getValue(int index) {
            return BenchmarkPSPLIBMultiModeLoader.CurrentSegmentState.values()[index];
        }
    }

    @Override
    @SneakyThrows
    public Benchmark loadBenchmark(String filePath) {
        InputStream inputStream = new FileInputStream(FileHelper.getFile(filePath));
        if (inputStream == null)
            throw new RuntimeException("Benchmark " + filePath + " not found");

        Project project = new Project();
        Benchmark benchmark = new Benchmark();
        benchmark.setProject(project);
        benchmark.setName(filePath);
        List<Activity> activities = new ArrayList<>();
        Map<Resource, Integer> availableResources = new HashMap<>();

        // buffer for the last section (ResourceAvailabilities)
        List<Resource> bufferResourcesAvailableOrder = new ArrayList<>();
        Activity bufferActivity = null;

        int currentSegmentStateIndex = -1;

        BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
        String strLine;
        while ((strLine = br.readLine()) != null) {
            if (strLine.contains("**********")) {
                currentSegmentStateIndex++;
            }

            switch (BenchmarkPSPLIBMultiModeLoader.CurrentSegmentState.getValue(currentSegmentStateIndex)) {
                case Header:
                    break;
                case ProjectMeta1:
                    if (strLine.contains("projects")) {
                        int projectId = this.getNumberAfterColon(strLine);
                        project.setProjectId(projectId);
                    }
                    else if (strLine.contains("jobs")) {
                        // #jobs already contains dummy jobs
                        int jobAmount = this.getNumberAfterColon(strLine);
                        benchmark.setNumberJobs(jobAmount);

                        for (int i = 0; i < jobAmount; i++) {
                            Activity activity = Activity.builder().activityId(i + 1).build();
                            activities.add(activity);
                        }
                    }
                    else if (strLine.contains("horizon")) {
                        int horizon = this.getNumberAfterColon(strLine);
                        benchmark.setHorizon(horizon);
                    }
                    else if (strLine.contains("nonrenewable")) {
                        int renewableAmount = this.getNumberAfterColon(strLine);

                        for (int i = 0; i < renewableAmount; i++) {
                            NonRenewableResource nonRenewableResource = NonRenewableResource.builder()
                                    .resourceId(i + 1)
                                    .build();

                            availableResources.put(nonRenewableResource, 0);
                        }
                    }
                    else if (strLine.contains("renewable")) {
                        int renewableAmount = this.getNumberAfterColon(strLine);

                        for (int i = 0; i < renewableAmount; i++) {
                            RenewableResource renewableResource = RenewableResource.builder()
                                    .resourceId(i + 1)
                                    .build();

                            availableResources.put(renewableResource, 0);
                        }
                    }

                    break;
                case ProjectMeta2:
                    break;
                case Jobs:
                    if (strLine.startsWith(" ")) {
                        List<Integer> lineIntegers = this.getIntegersByTrialErrorParsing(strLine);

                        // Now search for the proper job.
                        Activity activity = activities.stream().filter(possibleJob -> possibleJob.getActivityId() == lineIntegers.get(0)).findFirst().get();

                        // create modes
                        int amountMode = lineIntegers.get(1);

                        List<Mode> modes = new ArrayList<>();
                        List<Activity> successorActivities = new ArrayList<>();
                        activity.setModes(modes);
                        activity.setSuccessors(successorActivities);

                        for (int i = 0; i < amountMode; i++) {
                            modes.add(Mode.builder().modeId(i + 1).duration(-1).build());
                        }

                        // connect successors
                        int amountSuccessor = lineIntegers.get(2);

                        for (int i = 3; i < 3 + amountSuccessor; i++) {
                            int successorIndex = lineIntegers.get(i);
                            Activity successorActivity = activities.stream().filter(possibleJob -> possibleJob.getActivityId() == successorIndex).findFirst().get();
                            successorActivities.add(successorActivity);
                        }
                    }
                    break;
                case Modes:
                    if (strLine.contains("jobnr.")) { // header line of modes. We want to extract the resource usage order
                        String resourceStr = strLine.split("jobnr.")[1];
                        Arrays.stream(resourceStr.split("  ")).forEach(s -> {
                            Optional<Resource> potentialResource = availableResources.keySet().stream().filter(resource -> resource.toString().equals(s)).findFirst();
                            potentialResource.ifPresent(bufferResourcesAvailableOrder::add);
                        });
                    } else if (strLine.startsWith("   ")) { // 3 empty spaces means it's a continuation of the job
                        List<Integer> lineIntegers = this.getIntegersByTrialErrorParsing(strLine);
                        int modeId = lineIntegers.get(0);
                        int duration = lineIntegers.get(1);

                        Mode mode = bufferActivity.getModes().stream().filter(possibleMode -> possibleMode.getModeId() == modeId).findFirst().get();

                        Map<Resource, Integer> requestedResources = new HashMap<>();
                        for (int i = 2, j = 0; i < lineIntegers.size(); i++, j++) {
                            int requestedResourceAmount = lineIntegers.get(i);
                            Resource resource = bufferResourcesAvailableOrder.get(j);

                            if (requestedResourceAmount > 0)
                                requestedResources.put(resource, requestedResourceAmount);
                        }

                        mode.setDuration(duration);
                        mode.setRequestedResources(requestedResources);
                    } else if (strLine.startsWith(" ")) { // 2 empty spaces means it's a beginning of the new job
                        List<Integer> lineIntegers = this.getIntegersByTrialErrorParsing(strLine);
                        int jobId = lineIntegers.get(0);
                        int modeId = lineIntegers.get(1);
                        int duration = lineIntegers.get(2);

                        Activity activity = activities.stream().filter(possibleJob -> possibleJob.getActivityId() == jobId).findFirst().get();
                        Mode mode = activity.getModes().stream().filter(possibleMode -> possibleMode.getModeId() == modeId).findFirst().get();

                        Map<Resource, Integer> requestedResources = new HashMap<>();
                        for (int i = 3, j = 0; i < lineIntegers.size(); i++, j++) {
                            int requestedResourceAmount = lineIntegers.get(i);
                            Resource resource = bufferResourcesAvailableOrder.get(j);

                            if (requestedResourceAmount > 0)
                                requestedResources.put(resource, requestedResourceAmount);
                        }

                        mode.setDuration(duration);
                        mode.setRequestedResources(requestedResources);
                        bufferActivity = activity;
                    }
                    break;
                case ResourceAvailabilities:
                    if (strLine.startsWith("   ")) { // 3 spaces means value row
                        List<Integer> lineIntegers = this.getIntegersByTrialErrorParsing(strLine);
                        for (int i = 0; i < lineIntegers.size(); i++) {
                            availableResources.put(bufferResourcesAvailableOrder.get(i), lineIntegers.get(i));
                        }
                    }
                    break;
                case BeginProjectMeta2:
                case BeginHeader:
                case BeginModes:
                case BeginJobs:
                case BeginResourceAvailabilities:
                case BeginProjectMeta1:
                default:
                    currentSegmentStateIndex++;
            }
        }

        project.setActivities(activities);
        project.setAvailableResources(availableResources);

        // log.info(String.format("Loaded Benchmark: %s (Jobs: %d, Horizon: %d) ", benchmark.getName(), benchmark.getNumberJobs(), benchmark.getHorizon()));
        return benchmark;
    }

    @SneakyThrows
    @Override
    public OptimumReference loadOptimum(Benchmark benchmark) throws IOException {
        String filename = benchmark.getName();
        File file = FileHelper.getFile(filename);
        InputStream inputStream = null;

        OptimumReference optimumReference = new OptimumReference();
        optimumReference.setBenchmark(benchmark);

        int parameter = 0;
        int instance = 0;

        if (file.exists()) {
            boolean isFixedOptimum = true;
            File[] optimumFiles = file.getParentFile().listFiles(pathname -> pathname.getPath().contains("opt"));
            File[] heuristicFiles = file.getParentFile().listFiles(pathname -> pathname.getPath().contains("hrs"));

            if (optimumFiles.length > 0)
                inputStream = new FileInputStream(optimumFiles[0]);
            else if(heuristicFiles.length > 0) {
                inputStream = new FileInputStream(heuristicFiles[0]);
                isFixedOptimum = false;
            } else {
                return optimumReference;
            }

            String replacedName = benchmark.getName().replaceAll(".*(/|\\\\)|.mm", "");
            String benchmarkname = benchmark.getName().replaceAll(".mm(/|\\\\).*", "");
            String parameterInstanceString = replacedName.replaceAll(benchmarkname, "");
            String[] paramInstanceArray = parameterInstanceString.split("_");
            parameter = Integer.parseInt(paramInstanceArray[0]);
            instance = Integer.parseInt(paramInstanceArray[1]);

            int currentSegmentStateIndex = 0;

            BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
            String strLine;

            if (isFixedOptimum) {
                while ((strLine = br.readLine()) != null) {
                    if (currentSegmentStateIndex == 1) {
                        List<Double> numbersOfLine = this.getDoublesByTrialErrorParsing(strLine);
                        double curParameter = numbersOfLine.get(0);
                        double curInstance = numbersOfLine.get(1);
                        double curMakespan = numbersOfLine.get(2);
                        double curDuration = numbersOfLine.get(3);

                        if (curParameter == parameter && curInstance == instance) {
                            optimumReference.setMakespan((int) curMakespan);
                            optimumReference.setSeconds(curDuration);
                            return optimumReference;
                        }
                    }

                    if (strLine.contains("------")) {
                        currentSegmentStateIndex++;
                    }
                }
            } else {
                while ((strLine = br.readLine()) != null) {
                    if (currentSegmentStateIndex == 2) {
                        List<Double> numbersOfLine = this.getDoublesByTrialErrorParsing(strLine);
                        double curParameter = numbersOfLine.get(0);
                        double curInstance = numbersOfLine.get(1);
                        double curMakespan = numbersOfLine.get(2);

                        if (curParameter == parameter && curInstance == instance) {
                            optimumReference.setMakespan((int) curMakespan);
                            return optimumReference;
                        }
                    }

                    if (strLine.contains("======")) {
                        currentSegmentStateIndex++;
                    }
                }
            }
        }

        // log.info(String.format("Loaded Benchmark: %s (Jobs: %d, Horizon: %d) ", benchmark.getName(), benchmark.getNumberJobs(), benchmark.getHorizon()));
        return optimumReference;
    }

    public int getNumberAfterColon(String line) {
        String value = line.split(":  ")[1];
        return Integer.parseInt(value.split("  ")[0]);
    }

    public List<Integer> getIntegersByTrialErrorParsing(String line) {
        List<Integer> integerList = new ArrayList<>();
        String[] split = line.split(" ");

        // Trial-and-error parsing. In the end we have 6 integers
        Arrays.stream(split).forEach(possibleInt -> {
            try {
                integerList.add(Integer.parseInt(possibleInt));
            } catch (Exception ex) {
                // ignore
            }
        });
        return integerList;
    }

    public List<Double> getDoublesByTrialErrorParsing(String line) {
        List<Double> doubleList = new ArrayList<>();
        String[] split = line.replaceAll("\t", " ").split(" ");

        // Trial-and-error parsing. In the end we have 6 integers
        Arrays.stream(split).forEach(possibleDouble -> {
            try {
                doubleList.add(Double.parseDouble(possibleDouble));
            } catch (Exception ex) {
                // ignore
            }
        });
        return doubleList;
    }
}
