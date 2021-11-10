package de.uol.sao.rcpsp_framework.model.heuristics;

import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.*;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.ActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.ModeHeuristic;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.stream.Collectors;

public class HeuristicDirector {

    private static Map<Job, Double> computePriorityValueForJobs(ActivityHeuristic activityHeuristic, Map<Job, Mode> jobsModes, List<Job> jobs, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Job, Double> jobWithPriorityValue = new HashMap<>();
        jobs.forEach(job ->
            jobWithPriorityValue.put(job, activityHeuristic.determineActivityPriorityValue(job, jobsModes.get(job), scheduledJobs, scheduledModes, benchmark))
        );
        return jobWithPriorityValue;
    }

    private static Map<Mode, Double> computeModePriorityValues(ModeHeuristic modeHeuristic, Job selectedJob, List<Job> scheduledJobs, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Mode, Double> jobWithPriorityValue = new HashMap<>();
        selectedJob.getModes().forEach(mode -> {
            boolean infeasibleRenewableResources = false;
            for (Map.Entry<Resource, Integer> entry : mode.getRequestedResources().entrySet()) {
                Resource possibleRequestedResource = entry.getKey();
                Integer possibleRequestedAmount = entry.getValue();
                if (possibleRequestedResource instanceof RenewableResource) {
                    if (possibleRequestedAmount > benchmark.getProject().getAvailableResources().get(possibleRequestedResource))
                        infeasibleRenewableResources = true;
                }
            }

            if (!infeasibleRenewableResources)
                jobWithPriorityValue.put(mode, modeHeuristic.determineModePriorityValue(selectedJob, mode, scheduledJobs, scheduledModes, benchmark));
            else
                jobWithPriorityValue.put(mode, Double.MAX_VALUE);

        });
        return jobWithPriorityValue;
    }

    public static <T> T samplingSingle(Map<T, Double> objectWithPriorityValue, HeuristicSelection selection) {
        T selected = null;
        Double selectedPriorityValue = 0.0;

        // Select the activity acc. to heuristic selection
        for (Map.Entry<T, Double> entry : objectWithPriorityValue.entrySet()) {
            T job = entry.getKey();
            Double priorityValue = entry.getValue();

            if (selected == null || (selection == HeuristicSelection.MIN ? selectedPriorityValue > priorityValue : selectedPriorityValue < priorityValue)) {
                selected = job;
                selectedPriorityValue = priorityValue;
            }
        }

        return selected;
    }

    public static <T> T samplingRegretBasedBiasRandom(Map<T, Double> objectWithPriorityValue, HeuristicSelection selection) {
        T selected = null;
        Map<T, Double> objectWithRegrets = new HashMap<>();
        Map<T, Double> objectWithProbability = new HashMap<>();

        double lowestPriorityValue = objectWithPriorityValue.values().stream().sorted((o1, o2) -> (int) (o1 - o2)).findFirst().get();
        double highestPriorityValue = objectWithPriorityValue.values().stream().sorted((o1, o2) -> (int) (o1 - o2)).reduce((aDouble, aDouble2) -> aDouble2).stream().findFirst().get();

        // Calculation of v' acc. to literature
        if (selection == HeuristicSelection.MIN) {
            for (T t : objectWithPriorityValue.keySet()) {
                objectWithRegrets.put(t, highestPriorityValue - objectWithPriorityValue.get(t));
            }
        } else {
            for (T t : objectWithPriorityValue.keySet()) {
                objectWithRegrets.put(t, objectWithPriorityValue.get(t) - lowestPriorityValue);
            }
        }

        // Calculation of v'' acc. to literature
        double epsilon = Math.max(lowestPriorityValue, 0.001);
        double alpha = 10;

        for (Map.Entry<T, Double> entry : objectWithRegrets.entrySet()) {
            T t = entry.getKey();
            Double r_j = Math.pow(entry.getValue() + epsilon, alpha);
            if (Double.isInfinite(r_j))
                r_j = Double.MAX_VALUE;

            objectWithRegrets.put(t, r_j);  // acc. Drexl 1992
        }

        // Calculation of p acc. to literature
        double sumRegrets = objectWithRegrets.values().stream().reduce(Double::sum).get();
        if (Double.isInfinite(sumRegrets))
            sumRegrets = Double.MAX_VALUE;

        for (Map.Entry<T, Double> entry : objectWithRegrets.entrySet()) {
            T t = entry.getKey();
            Double r_j = entry.getValue(); // acc. Drexl 1992
            objectWithProbability.put(t, r_j / sumRegrets);
        }

        // Select acc to prob
        double p = Math.random();
        double cumulativeProbability = 0.0;

        for (Map.Entry<T, Double> entry : objectWithProbability.entrySet()) {
            T item = entry.getKey();
            Double probability = entry.getValue();

            cumulativeProbability += probability;
            if (p <= cumulativeProbability) {
                return item;
            }
        }

        // In case no obj has been selected due possible double issue (being sum(prob) != 1.0)
        return objectWithProbability.keySet().stream().findFirst().get();
    }

    public static ScheduleRepresentation constructScheduleRepresentation(Benchmark benchmark, Heuristic heuristic) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        return HeuristicDirector.constructScheduleRepresentation(benchmark, heuristic, HeuristicSampling.SINGLE, null);
    }

    public static ScheduleRepresentation constructScheduleRepresentation(Benchmark benchmark, Heuristic heuristic, HeuristicSampling heuristicSampling, List<JobMode> alreadyScheduled) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        ActivityHeuristic activityHeuristic = heuristic.getActivityHeuristic().getDeclaredConstructor().newInstance();
        ModeHeuristic modeHeuristic = heuristic.getModeHeuristic().getDeclaredConstructor().newInstance();

        List<Job> activityScheduled = alreadyScheduled == null ? new ArrayList<>() : alreadyScheduled.stream().map(JobMode::getJob).collect(Collectors.toList());
        List<Mode> modesScheduled = alreadyScheduled == null ? new ArrayList<>() : alreadyScheduled.stream().map(JobMode::getMode).collect(Collectors.toList());

        List<Job> possibleJobs = new ArrayList<>(ProjectHelper.getAvailableJobs(benchmark.getProject(), activityScheduled));

        // First schedule the activities
        while (!possibleJobs.isEmpty()) {
            // Compute the modes for all possible jobs
            Map<Job, Mode> modes = new HashMap<>();
            for (Job possibleJob : possibleJobs) {
                Map<Mode, Double> modesPriorityValues = HeuristicDirector.computeModePriorityValues(modeHeuristic, possibleJob, activityScheduled, modesScheduled, benchmark);
                Mode selectedMode = heuristicSampling == HeuristicSampling.SINGLE ?
                    HeuristicDirector.samplingSingle(modesPriorityValues, modeHeuristic.getHeuristicSelection()) :
                    HeuristicDirector.samplingRegretBasedBiasRandom(modesPriorityValues, modeHeuristic.getHeuristicSelection());
                modes.put(possibleJob, selectedMode);
            }

            // Compute all possible activities acc. to the heuristic alg
            Map<Job, Double> activityPriorityValues = HeuristicDirector.computePriorityValueForJobs(activityHeuristic, modes, possibleJobs, activityScheduled, modesScheduled, benchmark);
            Job selectedJob = heuristicSampling == HeuristicSampling.SINGLE ?
                    HeuristicDirector.samplingSingle(activityPriorityValues, activityHeuristic.getHeuristicSelection()) :
                    HeuristicDirector.samplingRegretBasedBiasRandom(activityPriorityValues, activityHeuristic.getHeuristicSelection());

            activityScheduled.add(selectedJob);
            modesScheduled.add(modes.get(selectedJob));

            // Remove from list and add the possible successors
            possibleJobs = new ArrayList<>(ProjectHelper.getAvailableJobs(benchmark.getProject(), activityScheduled));
        }

        return new ActivityListSchemeRepresentation(
            activityScheduled.stream().mapToInt(Job::getJobId).toArray(),
            modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }

    public static ScheduleRepresentation constructScheduleRepresentationWithExistingActivities(List<Job> activities, Benchmark benchmark, Heuristic heuristic, HeuristicSampling heuristicSampling) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        ModeHeuristic modeHeuristic = heuristic.getModeHeuristic().getDeclaredConstructor().newInstance();

        List<Job> activityScheduled = new ArrayList<>(activities);
        List<Mode> modesScheduled = new ArrayList<>();
        Map<Job, List<Mode>> reservation = ProjectHelper.getReservationOfNonRenewableResources(benchmark.getProject());

        List<Job> possibleJobs = new ArrayList<>();
        possibleJobs.add(benchmark.getProject().getJobs().get(0));

        activities.forEach(job -> {
            // Compute the modes for all possible jobs
            Map<Mode, Double> modesPriorityValues = HeuristicDirector.computeModePriorityValues(modeHeuristic, job, activityScheduled, modesScheduled, benchmark);
            Mode selectedMode = heuristicSampling == HeuristicSampling.SINGLE ?
                    HeuristicDirector.samplingSingle(modesPriorityValues, modeHeuristic.getHeuristicSelection()) :
                    HeuristicDirector.samplingRegretBasedBiasRandom(modesPriorityValues, modeHeuristic.getHeuristicSelection());

            modesScheduled.add(selectedMode);
        });

        return new ActivityListSchemeRepresentation(
                activityScheduled.stream().mapToInt(Job::getJobId).toArray(),
                modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }
}
