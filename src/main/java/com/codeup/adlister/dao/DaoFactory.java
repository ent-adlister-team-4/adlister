package com.codeup.adlister.dao;



public class DaoFactory {
    private static Projects projectsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Projects getProjectsDao() {
        if (projectsDao == null) {
            projectsDao = new MySQLProjectsDao(config);
        }
        return projectsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
