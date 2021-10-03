package de.uol.sao.rcpsp_framework.services.scheduler;

import de.uol.sao.rcpsp_framework.model.benchmark.Benchmark;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;
import de.uol.sao.rcpsp_framework.model.benchmark.Resource;
import de.uol.sao.rcpsp_framework.model.scheduling.Interval;
import de.uol.sao.rcpsp_framework.model.scheduling.JobMode;
import de.uol.sao.rcpsp_framework.model.scheduling.Schedule;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class SchedulerService {

    /**
     * Creates a schedule according to the order of the given list.
     * @param benchmark Benchmark of concern
     * @param execution List of all required executions
     * @return
     */
    public Schedule createSchedule(Benchmark benchmark, List<JobMode> execution) {
        Schedule schedule = new Schedule();
        schedule.setBenchmark(benchmark);

        // TODO: Validity check (all jobs executed ONCE? order kept? )

        JobMode jobMode1 = new JobMode(benchmark.getProject().getJobs().get(0), benchmark.getProject().getJobs().get(0).getModes().get(0));
        JobMode jobMode2 = new JobMode(benchmark.getProject().getJobs().get(1), benchmark.getProject().getJobs().get(1).getModes().get(1));
        JobMode jobMode3 = new JobMode(benchmark.getProject().getJobs().get(2), benchmark.getProject().getJobs().get(2).getModes().get(0));
        execution.add(jobMode1);
        execution.add(jobMode2);
        execution.add(jobMode3);

        List<Interval> intervals = new ArrayList<>();
        schedule.setIntervals(intervals);

        for (JobMode jobMode : execution) {
            Mode currentMode = jobMode.getMode();
            int potentialLowerBound = 0;
            Interval potentialInterval = new Interval(potentialLowerBound, potentialLowerBound + currentMode.getDuration() - 1, jobMode);

            // TODO: Ensure that the potential interval can be run at the same time with all required resources

            // TODO: Dealing with resource requests greater than offered

            for (Map.Entry<Resource, Integer> entry : currentMode.getRequestedResources().entrySet()) {
                Resource currentModeResource = entry.getKey();
                Integer currentModeAmount = entry.getValue();

                intervals.forEach(interval -> {

                });
            }

            intervals.add(potentialInterval);
        }

        return schedule;
    }

}
