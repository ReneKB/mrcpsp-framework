package de.uol.sao.rcpsp_framework.helper;

import de.uol.sao.rcpsp_framework.model.benchmark.Job;
import de.uol.sao.rcpsp_framework.model.benchmark.Mode;

import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class SolverHelper {

    public static void flipNeighbourModes(List<Job> initialJobList, int[] neighbourModes) {
        if (initialJobList.isEmpty())
            return;

        int gap = neighbourModes.length - initialJobList.size();

        Mode newSelectedMode = null;
        int newSelectedModeIndex = 0;

        int completeModesAmount = initialJobList.stream().map(Job::getModes).map(modes -> modes.size()).reduce(Integer::sum).get();
        boolean singleMode = completeModesAmount == initialJobList.size();

        while (newSelectedMode == null && !singleMode) {
            int randomIndex = new Random().nextInt(initialJobList.size());
            int currentMode = neighbourModes[randomIndex + gap];

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
            neighbourModes[newSelectedModeIndex + gap] = newSelectedMode.getModeId();
    }

}
