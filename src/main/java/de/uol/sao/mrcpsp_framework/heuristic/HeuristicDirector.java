package de.uol.sao.mrcpsp_framework.heuristic;

import de.uol.sao.mrcpsp_framework.function.Optimum;
import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.*;
import de.uol.sao.mrcpsp_framework.heuristic.activities.ActivityHeuristic;
import de.uol.sao.mrcpsp_framework.heuristic.modes.ModeHeuristic;
import de.uol.sao.mrcpsp_framework.representation.ActivityListRepresentation;
import de.uol.sao.mrcpsp_framework.representation.ScheduleRepresentation;

import java.lang.reflect.InvocationTargetException;
import java.util.*;

public class HeuristicDirector {

    private static Map<Activity, Double> computeActivityPriorityValues(ActivityHeuristic activityHeuristic, Map<Activity, Mode> jobsModes, List<Activity> activities, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Activity, Double> jobWithPriorityValue = new HashMap<>();
        activities.forEach(job ->
            jobWithPriorityValue.put(job, activityHeuristic.determineActivityPriorityValue(job, jobsModes.get(job), scheduledActivities, scheduledModes, benchmark))
        );
        return jobWithPriorityValue;
    }

    private static Map<Mode, Double> computeModePriorityValues(ModeHeuristic modeHeuristic, Activity selectedActivity, List<Activity> scheduledActivities, List<Mode> scheduledModes, Benchmark benchmark) {
        Map<Mode, Double> jobWithPriorityValue = new HashMap<>();
        selectedActivity.getModes().forEach(mode -> {
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
                jobWithPriorityValue.put(mode, modeHeuristic.determineModePriorityValue(selectedActivity, mode, scheduledActivities, scheduledModes, benchmark));
            else
                jobWithPriorityValue.put(mode, Double.MAX_VALUE);

        });
        return jobWithPriorityValue;
    }

    public static <T> T samplingSingle(Map<T, Double> objectWithPriorityValue, Optimum optimum) {
        T selected = null;
        Double selectedPriorityValue = 0.0;

        // Select the activity acc. to heuristic selection
        for (Map.Entry<T, Double> entry : objectWithPriorityValue.entrySet()) {
            T job = entry.getKey();
            Double priorityValue = entry.getValue();

            if (selected == null || (optimum == Optimum.MIN ? selectedPriorityValue > priorityValue : selectedPriorityValue < priorityValue)) {
                selected = job;
                selectedPriorityValue = priorityValue;
            }
        }

        return selected;
    }

    public static <T> T samplingRegretBasedBiasRandom(Map<T, Double> objectWithPriorityValue, Optimum optimum) {
        T selected = null;
        Map<T, Double> objectWithRegrets = new HashMap<>();
        Map<T, Double> objectWithProbability = new HashMap<>();

        double lowestPriorityValue = objectWithPriorityValue.values().stream().sorted((o1, o2) -> (int) (o1 - o2)).findFirst().get();
        double highestPriorityValue = objectWithPriorityValue.values().stream().sorted((o1, o2) -> (int) (o1 - o2)).reduce((aDouble, aDouble2) -> aDouble2).stream().findFirst().get();

        // Calculation of v' acc. to literature
        if (optimum == Optimum.MIN) {
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
        return HeuristicDirector.constructScheduleRepresentation(benchmark, heuristic, HeuristicSampling.SINGLE);
    }

    public static ScheduleRepresentation constructScheduleRepresentation(Benchmark benchmark, Heuristic heuristic, HeuristicSampling heuristicSampling) throws NoSuchMethodException, InvocationTargetException, InstantiationException, IllegalAccessException {
        ActivityHeuristic activityHeuristic = heuristic.getActivityHeuristic().getDeclaredConstructor().newInstance();
        ModeHeuristic modeHeuristic = heuristic.getModeHeuristic().getDeclaredConstructor().newInstance();

        List<Activity> activityScheduled = new ArrayList<>();
        List<Mode> modesScheduled =new ArrayList<>();

        List<Activity> possibleActivities = new ArrayList<>(ProjectHelper.getAvailableJobs(benchmark.getProject(), activityScheduled));

        // First schedule the activities
        while (!possibleActivities.isEmpty()) {
            // Compute the modes for all possible jobs
            Map<Activity, Mode> modes = new HashMap<>();
            for (Activity possibleActivity : possibleActivities) {
                Map<Mode, Double> modesPriorityValues = HeuristicDirector.computeModePriorityValues(modeHeuristic, possibleActivity, activityScheduled, modesScheduled, benchmark);
                Mode selectedMode = heuristicSampling == HeuristicSampling.SINGLE ?
                    HeuristicDirector.samplingSingle(modesPriorityValues, modeHeuristic.getOptimum()) :
                    HeuristicDirector.samplingRegretBasedBiasRandom(modesPriorityValues, modeHeuristic.getOptimum());
                modes.put(possibleActivity, selectedMode);
            }

            // Compute all possible activities acc. to the heuristic alg
            Map<Activity, Double> activityPriorityValues = HeuristicDirector.computeActivityPriorityValues(activityHeuristic, modes, possibleActivities, activityScheduled, modesScheduled, benchmark);
            Activity selectedActivity = heuristicSampling == HeuristicSampling.SINGLE ?
                    HeuristicDirector.samplingSingle(activityPriorityValues, activityHeuristic.getOptimum()) :
                    HeuristicDirector.samplingRegretBasedBiasRandom(activityPriorityValues, activityHeuristic.getOptimum());

            activityScheduled.add(selectedActivity);
            modesScheduled.add(modes.get(selectedActivity));

            // Remove from list and add the possible successors
            possibleActivities = new ArrayList<>(ProjectHelper.getAvailableJobs(benchmark.getProject(), activityScheduled));
        }

        return new ActivityListRepresentation(
            activityScheduled.stream().mapToInt(Activity::getActivityId).toArray(),
            modesScheduled.stream().mapToInt(Mode::getModeId).toArray()
        );
    }

}
