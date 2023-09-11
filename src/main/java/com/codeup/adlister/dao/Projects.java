package com.codeup.adlister.dao;

import com.codeup.adlister.models.Project;

import java.util.List;

public interface Projects {
    // get a list of all the ads
    List<Project> all();
    // insert a new ad and return the new ad's id
    Long insert(Project project);

    void editProject(Project project);

    List<Project> byUser(long id);

    Project byProjectId(long projectId);

    void deleteProject(long id);

//    List<Project> insert(Project project);
}
