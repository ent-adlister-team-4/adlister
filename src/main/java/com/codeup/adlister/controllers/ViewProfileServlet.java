package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Projects;
import com.codeup.adlister.models.Project;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        User loggedInUser = (User) request.getSession().getAttribute("user");
        request.setAttribute("projects", DaoFactory.getProjectsDao().byUser(loggedInUser.getId()));
        request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User loggedInUser = (User) req.getSession().getAttribute("user");
        try {
            String projectName = req.getParameter("project_name");
            String projectDetails = req.getParameter("project_details");

            Project addProject = new Project(loggedInUser.getId(), projectName, projectDetails);

            Projects projectsDao = DaoFactory.getProjectsDao();
            projectsDao.insert(addProject);

            try {
                resp.sendRedirect("/profile");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        } catch (NumberFormatException e) {
            throw new RuntimeException(e);
        }


    }
}
