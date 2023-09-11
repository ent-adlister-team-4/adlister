package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdsIndexServlet", urlPatterns = "/projects")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the value of the "query" parameter from the request
        String searchQuery = request.getParameter("query");

        // Retrieve the list of projects from the DAO
        List<Project> allProjects = DaoFactory.getProjectsDao().all();

        // Create a list to store the filtered projects
        List<Project> filteredProjects = new ArrayList<>();

        if (searchQuery != null && !searchQuery.isEmpty()) {
            // If a search query is provided, filter the projects based on the query
            for (Project project : allProjects) {
                // Adjust this condition based on your filtering criteria
                if (project.getName().toLowerCase().contains(searchQuery.toLowerCase())) {
                    filteredProjects.add(project);
                }
            }
        } else {
            // If no search query is provided, display all projects
            filteredProjects.addAll(allProjects);
        }

        // Set the filtered projects as an attribute to be used in your JSP
        request.setAttribute("searchResults", filteredProjects);

        // Forward the request to the JSP for rendering
        request.getRequestDispatcher("/WEB-INF/projects.jsp").forward(request, response);
    }

}


