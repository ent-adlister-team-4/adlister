package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Projects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.DeleteProject", urlPatterns = "/delete")
public class DeleteProjectServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String projectId = req.getParameter("projectID");

        long projectIdLong = Long.parseLong(projectId);
        Projects projectsDao = DaoFactory.getProjectsDao();

        projectsDao.deleteProject(projectIdLong);
        resp.sendRedirect("/profile");
    }

}
