package com.cloudstorage.servlet;
import com.cloudstorage.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterServlet {
    public static boolean registerUser(String username,
                                       String email,
                                       String password) {
        try {
            Connection con =
                    DBConnection.getConnection();
            String sql =
                    "INSERT INTO users(username,email,password) VALUES(?,?,?)";
            PreparedStatement ps =
                    con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            int rows = ps.executeUpdate();
            return rows > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}