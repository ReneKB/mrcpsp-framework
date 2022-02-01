package de.uol.sao.mrcpsp_framework.representation;

import de.uol.sao.mrcpsp_framework.benchmark.model.Activity;
import de.uol.sao.mrcpsp_framework.helper.ProjectHelper;
import de.uol.sao.mrcpsp_framework.benchmark.model.Mode;
import de.uol.sao.mrcpsp_framework.benchmark.model.Project;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class ActivityListRepresentation implements ScheduleRepresentation {
    int[] activities; // equals λ acc. to literature
    int[] modes; // equals µ acc. to literature

    public ActivityListRepresentation(List<ActivityMode> activityModes) {
        this.activities = new int[activityModes.size()];
        this.modes = new int[activityModes.size()];

        for (int i = 0; i < activityModes.size(); i++) {
            ActivityMode activityMode = activityModes.get(i);
            this.activities[i] = activityMode.getActivity().getActivityId();
            this.modes[i] = activityMode.getMode().getModeId();
        }
    }

    @Override
    public List<ActivityMode> toActivityModeList(Project project) {
        List<ActivityMode> activityModes = new ArrayList<>();
        for (int i = 0; i < modes.length; i++) {
            Activity activity = ProjectHelper.getJobFromProject(project, activities[i]).get();
            Mode mode = ProjectHelper.getModeFromJob(activity, modes[i]).get();
            activityModes.add(new ActivityMode(activity, mode));
        }
        return activityModes;
    }

    public String toString() {
        return String.format("λ: %s, µ: %s", Arrays.toString(activities), Arrays.toString(modes));
    }

}
