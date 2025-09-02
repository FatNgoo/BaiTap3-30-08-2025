package dao;

import java.sql.*;
import DBConnection.DBConnection;

public class ForgotPasswordDAO {
    private Connection getConnection() throws Exception {
        return DBConnection.getConnection();
    }

    public boolean updatePasswordIfMatch(String username, String email, String newPassword) {
        String sql = "UPDATE users SET password=? WHERE username=? AND email=?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setString(1, newPassword);
            ps.setString(2, username);
            ps.setString(3, email);
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
