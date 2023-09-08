package com.codeup.adlister.dao;

import com.codeup.adlister.models.Project;

import java.util.ArrayList;
import java.util.List;

public class ListAdsDao implements Projects {
    private List<Project> projects;

    public List<Project> all() {
        if (prjects == null) {
            projects = generateProjects();
        }
        return projects;
    }

    public List<Project> insert(Project project) {
        // make sure we have ads
        if (projects == null) {
            projects = generateProjects();
        }
        // we'll assign an "id" here based on the size of the ads list
        // really the dao would handle this
        project.setId((long) projects.size());
        projects.add(project);
        return project.getId();

        private List<Project> generateProjects () {
            List<Project> projects = new ArrayList<>();
            projects.add(new Project(
                    1,
                    1,
                    "playstation for sale",
                    "This is a slightly used playstation"
            ));
            projects.add(new Project(
                    2,
                    1,
                    "Super Nintendo",
                    "Get your game on with this old-school classic!"
            ));
            projects.add(new Project(
                    3,
                    2,
                    "Junior Java Developer Position",
                    "Minimum 7 years of experience required. You will be working in the scripting language for Java, JavaScript"
            ));
            projects.add(new Project(
                    4,
                    2,
                    "JavaScript Developer needed",
                    "Must have strong Java skills"
            ));
            return projects;
        }

    }
}
