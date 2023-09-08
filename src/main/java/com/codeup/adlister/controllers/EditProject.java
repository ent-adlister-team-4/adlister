package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name = "controllers.EditProject", urlPatterns = "/edit")
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
//	try {
//		String projectId = request.getParameter("projectId");
//		String newName = request.getParameter("newName");
//		String newDescription = request.getParameter("newDescription");
//	}catch (ServletException e) {
//		throw new RuntimeException(e);
//	}catch (IOException e) {
//		throw new RuntimeException(e);
//	}


	}
}

