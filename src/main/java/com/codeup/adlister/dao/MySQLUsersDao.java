package com.codeup.adlister.dao;

import com.codeup.adlister.models.Project;
import com.codeup.adlister.models.User;

import com.codeup.adlister.util.Config;
import com.mysql.cj.jdbc.Driver;
import java.sql.*;

public class MySQLUsersDao implements Users {
    private Connection connection;

    public MySQLUsersDao(Config config) {
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

    public void editUserName(User loggedInUser) {
        try {
            String query = "UPDATE dev_project_lister.Users SET name = ? WHERE user_id = ?";
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, loggedInUser.getUsername());
            stmt.setLong(2, loggedInUser.getId());

            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error in editing UserName.", e);
        }
    }


    @Override
    public User findByUsername(String name) {
        String query = "SELECT * FROM users WHERE name = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, name);
            return extractUser(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public Long insert(User user) {
        String query = "INSERT INTO users(name, email, password) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }

    private User extractUser(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new User(
            rs.getLong("user_id"),
            rs.getString("name"),
            rs.getString("email"),
            rs.getString("password")
        );
    }

}
