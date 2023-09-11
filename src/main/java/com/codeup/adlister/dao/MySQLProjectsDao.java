package com.codeup.adlister.dao;

import com.codeup.adlister.models.Project;

import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLProjectsDao implements Projects {
    private Connection connection = null;

    public MySQLProjectsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    public void editProject(Project project) {
        try {
            String query = "UPDATE dev_project_lister.Projects SET name = ?, description = ? WHERE project_id = ?";
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, project.getName());
            stmt.setString(2, project.getDescription());
            stmt.setLong(3, project.getId());

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error in editing project.", e);
        }
    }

    @Override
    public List<Project> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM Projects");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public List<Project> byUser(long userId) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM Projects WHERE user_id = ?");
            stmt.setLong(1, userId);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    public void deleteProject(long projectId) {
        try {
            String query = "DELETE FROM Projects WHERE project_id = ?";
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, projectId);
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return;

        } catch (SQLException e) {
            throw new RuntimeException("Error in deleting project.", e);
        }
    }

    @Override
    public Long insert(Project project) {
        try {
            String insertQuery = "INSERT INTO Projects(user_id, name, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, project.getUserId());
            stmt.setString(2, project.getName());
            stmt.setString(3, project.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }


    private Project extractProject(ResultSet rs) throws SQLException {
        return new Project(
                rs.getLong("project_id"),
                rs.getLong("user_id"),
                rs.getString("name"),
                rs.getString("description")
        );
    }

    private List<Project> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Project> projects = new ArrayList<>();
        while (rs.next()) {
            projects.add(extractProject(rs));
        }
        return projects;
    }
}