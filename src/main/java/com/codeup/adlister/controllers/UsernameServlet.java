package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.Projects;
import com.codeup.adlister.dao.Users;
import com.codeup.adlister.models.Project;
import com.codeup.adlister.models.User;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/username")
public class UsernameServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        try {
            User loggedInUser = (User) req.getSession().getAttribute("user");
            String newName = req.getParameter("user_name");
            loggedInUser.setUsername(newName);

            Users usersDao = DaoFactory.getUsersDao();
            usersDao.editUserName(loggedInUser);

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
