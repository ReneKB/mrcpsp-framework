package de.uol.sao.rcpsp_framework.services.solver;

import de.uol.sao.rcpsp_framework.exceptions.GiveUpException;
import de.uol.sao.rcpsp_framework.exceptions.NoNonRenewableResourcesLeftException;
import de.uol.sao.rcpsp_framework.exceptions.RenewableResourceNotEnoughException;
import de.uol.sao.rcpsp_framework.helper.ProjectHelper;
import de.uol.sao.rcpsp_framework.helper.ScheduleComparator;
import de.uol.sao.rcpsp_framework.helper.ScheduleHelper;
import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Project;
import de.uol.sao.rcpsp_framework.model.heuristics.Heuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicDirector;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.RandomActivityHeuristic;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.LRSHeuristic;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.config.ConfigurableBeanFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Log4j2
@Service("TabuSearch")
@Scope(ConfigurableBeanFactory.SCOPE_PROTOTYPE)
public class TabuSearchSolver implements Solver {

    @Autowired
    SchedulerService schedulerService;

    @Autowired
    BeanFactory beans;

    @Override
    public Schedule algorithm(Benchmark benchmark, int iterations, UncertaintyModel uncertaintyModel) throws GiveUpException {
        Schedule tabuSchedule = this.createInitialSolution(benchmark, uncertaintyModel);
        Schedule bestSchedule = tabuSchedule;

        int tabuListSize = benchmark.getNumberJobs() * 3;
        List<ScheduleRepresentation> tabuList = new LinkedList<>();

        // Generate random solution until it's feasible
        int i = 0;
        while (i < iterations) {
            // Create neighbors
            ScheduleRepresentation representation = tabuSchedule.getScheduleRepresentation();
            List<ScheduleRepresentation> neighbourhood = this.getNeighbourhood(benchmark.getProject(), representation);
            neighbourhood.removeIf(tabuList::contains);

            Schedule neighbourhoodFavorite = null;
            for (int j = 0; j < neighbourhood.size(); j++) {
                ScheduleRepresentation currentRepresentation = neighbourhood.get(j);
                Schedule currentSchedule = null;

                try {
                    currentSchedule = schedulerService.createScheduleProactive(benchmark, currentRepresentation, uncertaintyModel);
                } catch (Exception ex) { }

                if (currentSchedule != null) {
                    if (ScheduleHelper.compareSchedule(currentSchedule, neighbourhoodFavorite, ScheduleComparator.MAKESPAN_AND_RM)) {
                        neighbourhoodFavorite = currentSchedule;
                    }
                }

                tabuList.add(0, currentRepresentation);
                if (tabuList.size() > tabuListSize)
                    tabuList.remove(tabuListSize - 1);

            }

            if (neighbourhoodFavorite != null) {
                tabuSchedule = neighbourhoodFavorite;
                if (ScheduleHelper.compareSchedule(tabuSchedule, bestSchedule, ScheduleComparator.MAKESPAN_AND_RM)) {
                    bestSchedule = tabuSchedule;
                }
            }

            i += neighbourhood.size();
        }
        return bestSchedule;
    }

    public List<ScheduleRepresentation> getNeighbourhood(Project project, ScheduleRepresentation scheduleRepresentation) {
        List<JobMode> jobModes = scheduleRepresentation.toJobMode(project);

        List<ScheduleRepresentation> activityNeighbourhood = new ArrayList<>();
        List<ScheduleRepresentation> modesNeighbourhood = new ArrayList<>();

        List<Job> jobList = jobModes.stream().map(JobMode::getJob).collect(Collectors.toList());
        List<Mode> modeList = jobModes.stream().map(JobMode::getMode).collect(Collectors.toList());

        activityNeighbourhood.add(scheduleRepresentation);

        int[] jobs = new int[jobList.size()];
        int[] modes = new int[modeList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = jobList.get(i).getJobId();
            modes[i] = modeList.get(i).getModeId();
        }

        Set<Job> handledJobs = new HashSet<>();
        handledJobs.add(jobList.get(0));

        for (int i = 1; i < jobList.size(); i++) {
            Job previousJob = jobList.get(i - 1);
            Job currentJob = jobList.get(i);

            Set<Job> requiredJobs = ProjectHelper.getPredecessorsOfJob(project, currentJob);
            if (handledJobs.containsAll(requiredJobs) && !requiredJobs.contains(previousJob)) { // Can be swapped
                int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
                int[] neighbourModes = Arrays.copyOf(modes, modes.length);

                int tmp = neighbourJobs[i-1];
                neighbourJobs[i-1] = neighbourJobs[i];
                neighbourJobs[i] = tmp;

                tmp = neighbourModes[i-1];
                neighbourModes[i-1] = neighbourModes[i];
                neighbourModes[i] = tmp;

                activityNeighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));
            }
            handledJobs.add(currentJob);
        }

        for (ScheduleRepresentation representation : new ArrayList<>(activityNeighbourhood)) {
            List<JobMode> jobModeList = representation.toJobMode(project);
            int[] activityArrayRepresentation = this.convertIntegerListToArray(jobModeList.stream().map(jobMode -> jobMode.getJob().getJobId()).collect(Collectors.toList()));

            int i = 0;
            for (JobMode jobMode : jobModeList) {
                Job currentJob = jobMode.getJob();
                int modeIndex = jobMode.getMode().getModeId() - 1;
                int currentJobModeAmount = currentJob.getModes().size();

                if (currentJobModeAmount != 1) {
                    // add previous mode representation
                    if (modeIndex != 0) {
                        int[] modesArrayRepresentation = this.convertIntegerListToArray(jobModeList.stream().map(currentJobMode -> currentJobMode.getMode().getModeId()).collect(Collectors.toList()));
                        modesArrayRepresentation[i] = modeIndex;
                        modesNeighbourhood.add(new ActivityListSchemeRepresentation(activityArrayRepresentation, modesArrayRepresentation));
                    }

                    // add next mode representation
                    if (modeIndex != currentJobModeAmount - 1) {
                        int[] modesArrayRepresentation = this.convertIntegerListToArray(jobModeList.stream().map(currentJobMode -> currentJobMode.getMode().getModeId()).collect(Collectors.toList()));
                        modesArrayRepresentation[i] = modeIndex;
                        modesNeighbourhood.add(new ActivityListSchemeRepresentation(activityArrayRepresentation, modesArrayRepresentation));
                    }
                }
                i++;
            }
        }

        Collections.shuffle(modesNeighbourhood);

        activityNeighbourhood.remove(scheduleRepresentation); // As the origin is no possible neighbour
        modesNeighbourhood = modesNeighbourhood.subList(0, Math.min(activityNeighbourhood.size(), modesNeighbourhood.size()));

        return Stream.concat(activityNeighbourhood.stream(), modesNeighbourhood.stream()).collect(Collectors.toList());
    }

    public Schedule createInitialSolution(Benchmark benchmark, UncertaintyModel uncertaintyModel) throws GiveUpException {
        // must be a feasible solution
        Schedule schedule = null;

        int initialSolutionTries = 0;
        while (schedule == null) {
            try {
                initialSolutionTries++;
                if (initialSolutionTries > 10000)
                    throw new GiveUpException();
                ScheduleRepresentation representation = HeuristicDirector.constructScheduleRepresentation(benchmark,
                        Heuristic.builder()
                                .modeHeuristic(LRSHeuristic.class)
                                .activityHeuristic(RandomActivityHeuristic.class)
                                .build());
                schedule = this.schedulerService.createScheduleProactive(benchmark, representation, uncertaintyModel);
            } catch (NoNonRenewableResourcesLeftException | RenewableResourceNotEnoughException | NoSuchMethodException | InvocationTargetException | InstantiationException | IllegalAccessException ignored) {
                // ignored.printStackTrace();
            }
        }

        return schedule;
    }

    int[] convertIntegerListToArray(List<Integer> list) {
        int[] ints = new int[list.size()];

        for (int i = 0; i < list.size(); i++) {
            ints[i] = list.get(i);
        }
        return ints;
    }
}
