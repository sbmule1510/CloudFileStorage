package com.cloudstorage.servlet;
import com.cloudstorage.util.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
            Connection con = DBConnection.getConnection();
            if (con == null) {
                response.getWriter().println("Database Connection Failed");
                return;
            }
            String sql =
                    "INSERT INTO users(username,email,password) VALUES(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, password);
            int result = ps.executeUpdate();
            if (result > 0) {
                response.setContentType("text/html");
                response.getWriter().println(
                        "<script>" +
                                "alert('Registration Successful! Please Login.');" +
                                "window.location='login.jsp';" +
                                "</script>");
            } else {
                response.getWriter().println("Registration Failed");
            }
            ps.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}