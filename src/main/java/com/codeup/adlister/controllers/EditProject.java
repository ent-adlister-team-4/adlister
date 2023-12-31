package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLProjectsDao;
import com.codeup.adlister.dao.Projects;
import com.codeup.adlister.models.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/edit")
public class EditProject extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.getRequestDispatcher("/WEB-INF/edit_project.jsp").forward(request, response);
		} catch (ServletException e) {
			throw new RuntimeException(e);
		} catch (IOException e) {
			throw new RuntimeException(e);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
	try {
		long projectId = Long.parseLong(req.getParameter("projectId"));
		System.out.println(projectId);
		String newName = req.getParameter("newName");
		String newDescription = req.getParameter("newDescription");


		Projects projectsDao = DaoFactory.getProjectsDao();
		Project updatedProject = projectsDao.byProjectId(projectId);
		updatedProject.setName(newName);
		updatedProject.setDescription(newDescription);
		projectsDao.editProject(updatedProject);

		try {
			resp.sendRedirect("/profile");
		} catch (IOException e) {
			throw new RuntimeException(e);
		}

	}catch (NumberFormatException e) {
		throw new RuntimeException(e);
	}

	}
}

