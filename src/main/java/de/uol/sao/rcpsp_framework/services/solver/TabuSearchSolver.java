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
import de.uol.sao.rcpsp_framework.model.heuristics.HeuristicSampling;
import de.uol.sao.rcpsp_framework.model.heuristics.activities.*;
import de.uol.sao.rcpsp_framework.model.heuristics.modes.*;
import de.uol.sao.rcpsp_framework.model.metrics.Metrics;
import de.uol.sao.rcpsp_framework.model.scheduling.*;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ActivityListSchemeRepresentation;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.representation.ScheduleRepresentation;
import de.uol.sao.rcpsp_framework.services.scheduler.SchedulerService;
import lombok.SneakyThrows;
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

        int tabuListSize = (int) Math.sqrt(benchmark.getNumberJobs() - 2);
        List<ScheduleRepresentation> tabuList = new LinkedList<>();

        // Generate random solution until it's feasible
        int i = 0;
        while (i < iterations) {
            // Create neighbors
            ScheduleRepresentation representation = tabuSchedule.getScheduleRepresentation();
            List<ScheduleRepresentation> neighbourhood = this.getNeighbourhood(benchmark, representation);
            neighbourhood.removeIf(tabuList::contains);

            Schedule neighbourhoodFavorite = null;

            for (int j = 0; j < neighbourhood.size(); j++) {
                ScheduleRepresentation currentRepresentation = neighbourhood.get(j);
                Schedule currentSchedule = null;

                try {
                    currentSchedule = schedulerService.createScheduleProactive(benchmark, currentRepresentation, uncertaintyModel);
                } catch (Exception ex) { }

                if (ScheduleHelper.compareSchedule(currentSchedule, neighbourhoodFavorite, ScheduleComparator.MAKESPAN_AND_RM)) {
                    neighbourhoodFavorite = currentSchedule;
                }
            }

            if (neighbourhoodFavorite != null) {
                tabuSchedule = neighbourhoodFavorite;
                if (ScheduleHelper.compareSchedule(tabuSchedule, bestSchedule, ScheduleComparator.MAKESPAN_AND_RM)) {
                    bestSchedule = neighbourhoodFavorite;
                }

                tabuList.add(0, tabuSchedule.getScheduleRepresentation());
                if (tabuList.size() > tabuListSize)
                    tabuList.remove(tabuListSize - 1);
            }

            i += neighbourhood.size();
        }
        return bestSchedule;
    }

    @SneakyThrows
    public List<ScheduleRepresentation> getNeighbourhood(Benchmark benchmark, ScheduleRepresentation scheduleRepresentation) {
        List<JobMode> jobModes = scheduleRepresentation.toJobMode(benchmark.getProject());

        List<ScheduleRepresentation> neighbourhood = new ArrayList<>();

        List<Job> jobList = jobModes.stream().map(JobMode::getJob).collect(Collectors.toList());
        List<Mode> modeList = jobModes.stream().map(JobMode::getMode).collect(Collectors.toList());

        int[] jobs = new int[jobList.size()];
        int[] modes = new int[modeList.size()];

        for (int i = 0; i < jobs.length; i++) {
            jobs[i] = jobList.get(i).getJobId();
            modes[i] = modeList.get(i).getModeId();
        }

        Set<Job> handledJobs = new HashSet<>();
        handledJobs.add(jobList.get(0));

        // Adds for the same activity list mode neighbours
        for (int i = 0; i < Math.floor(Math.sqrt(jobList.size())); i++) {
            int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
            int[] neighbourModes = Arrays.copyOf(modes, modes.length);

            flipNeighbourModes(jobList, neighbourModes);
            neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));
        }

        for (int i = 1; i < jobList.size(); i++) {
            Job previousJob = jobList.get(i - 1);
            Job currentJob = jobList.get(i);

            Set<Job> requiredJobs = ProjectHelper.getPredecessorsOfJob(benchmark.getProject(), currentJob);
            if (handledJobs.containsAll(requiredJobs) && !requiredJobs.contains(previousJob)) { // Can be swapped
                int[] neighbourJobs = Arrays.copyOf(jobs, jobs.length);
                int[] neighbourModes = Arrays.copyOf(modes, modes.length);

                int tmp = neighbourJobs[i-1];
                neighbourJobs[i-1] = neighbourJobs[i];
                neighbourJobs[i] = tmp;

                tmp = neighbourModes[i-1];
                neighbourModes[i-1] = neighbourModes[i];
                neighbourModes[i] = tmp;

                flipNeighbourModes(jobList, neighbourModes);
                neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));

                flipNeighbourModes(jobList, neighbourModes);
                neighbourhood.add(new ActivityListSchemeRepresentation(neighbourJobs, neighbourModes));
            }
            handledJobs.add(currentJob);
        }

        return neighbourhood;
    }

    private void flipNeighbourModes(List<Job> initialJobList, int[] neighbourModes) {
        Mode newSelectedMode = null;
        int newSelectedModeIndex = 0;

        int completeModesAmount = initialJobList.stream().map(Job::getModes).map(modes -> modes.size()).reduce(Integer::sum).get();
        boolean singleMode = completeModesAmount == initialJobList.size();

        while (newSelectedMode == null && !singleMode) {
            int randomIndex = new Random().nextInt(initialJobList.size());
            int currentMode = neighbourModes[randomIndex];

            Job job = initialJobList.get(randomIndex);
            int size = job.getModes().size();
            if (size != 1) {
                List<Mode> selectedMode = job.getModes().stream().dropWhile(mode -> mode.getModeId() == currentMode).collect(Collectors.toList());
                Collections.shuffle(selectedMode);
                newSelectedMode = selectedMode.get(0);
                newSelectedModeIndex = randomIndex;
            }
        }

        if (!singleMode)
            neighbourModes[newSelectedModeIndex] = newSelectedMode.getModeId();
    }

    public Schedule createInitialSolution(Benchmark benchmark, UncertaintyModel uncertaintyModel) throws GiveUpException {
        // must be a feasible solution
        Schedule schedule = null;

        int initialSolutionTries = 0;
        while (schedule == null) {
            try {
                initialSolutionTries++;
                if (initialSolutionTries > 100)
                    throw new GiveUpException();
                ScheduleRepresentation representation = HeuristicDirector.constructScheduleRepresentation(benchmark,
                        Heuristic.builder()
                            .modeHeuristic(LRSHeuristic.class)
                            .activityHeuristic(MSLKHeuristic.class)
                            .build(),
                        HeuristicSampling.REGRET_BASED_BIAS);
                schedule = this.schedulerService.createScheduleProactive(benchmark, representation, uncertaintyModel);
            } catch (NoNonRenewableResourcesLeftException | RenewableResourceNotEnoughException | NoSuchMethodException | InvocationTargetException | InstantiationException | IllegalAccessException ignored) {
                // ignored.printStackTrace();
            }
        }

        return schedule;
    }

}
