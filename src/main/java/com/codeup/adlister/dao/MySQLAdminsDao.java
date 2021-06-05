package com.codeup.adlister.dao;

import com.codeup.adlister.models.Admin;
import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLAdminsDao implements Admins {
    private Connection connection;

    public MySQLAdminsDao(Config config) {
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

    @Override
    public Admin findByUserId(int userId) {
        String query = "SELECT * FROM admins WHERE username = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, userId);
            return extractAdmin(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public int insert(Admin admin) {
        String query = "INSERT INTO admins(users_id) VALUES (?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            stmt.setInt(1, admin.getUsers_id());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getInt(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating new user", e);
        }
    }


    private Admin extractAdmin(ResultSet rs) throws SQLException {
        if (! rs.next()) {
            return null;
        }
        return new Admin(
                rs.getInt("user_id")
        );
    }
}
