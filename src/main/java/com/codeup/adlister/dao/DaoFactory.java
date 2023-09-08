package com.codeup.adlister.dao;


import com.codeup.adlister.util.Config;

public class DaoFactory {
    private static Projects adsDao;
    private static Users usersDao;
    private static Config config = new Config();

    public static Projects getAdsDao() {
        if (adsDao == null) {
            adsDao = new MySQLProjectsDao(config);
        }
        return adsDao;
    }

    public static Users getUsersDao() {
        if (usersDao == null) {
            usersDao = new MySQLUsersDao(config);
        }
        return usersDao;
    }
}
