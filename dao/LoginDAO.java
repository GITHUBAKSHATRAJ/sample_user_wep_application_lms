// LoginDAO.java
package com.user.dao;

import com.user.model.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAO {
    private final Connection connection;

    public LoginDAO(Connection connection) {
        this.connection = connection;
    }

    /**
     * Authenticate a user based on email and password.
     *
     * @param email    User's email
     * @param password User's password
     * @return Login object if credentials are valid, null otherwise
     */
    public Login authenticate(String email, String password) {
        String sql = "SELECT email, role FROM users WHERE email = ? AND password = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, email);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Login(
                        rs.getString("email"),
                        password, // Password not fetched for security
                        rs.getString("role")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * Change a user's password.
     *
     * @param email       User's email
     * @param newPassword New password
     * @return true if the password was updated, false otherwise
     */
    public boolean changePassword(String email, String newPassword) {
        String sql = "UPDATE users SET password = ? WHERE email = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, newPassword);
            stmt.setString(2, email);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    /**
     * Check if an email is already registered.
     *
     * @param email User's email
     * @return true if the email exists, false otherwise
     */
    public boolean isEmailRegistered(String email) {
        String sql = "SELECT 1 FROM users WHERE email = ?";
        try (PreparedStatement stmt = connection.prepareStatement(sql)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
