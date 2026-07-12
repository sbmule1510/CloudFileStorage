package com.cloudstorage.servlet;
import com.cloudstorage.util.DBConnection;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class DeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws IOException {
        String fileName = request.getParameter("file");
        String filePath =
                "C:/apache-tomcat-9.0.117/webapps/CloudFileStorage/uploads/"
                        + fileName;
        try {
            File file = new File(filePath);
            if (file.exists()) {
                file.delete();
            }
            Connection con = DBConnection.getConnection();
            PreparedStatement ps =
                    con.prepareStatement("DELETE FROM files WHERE filename=?");
            ps.setString(1, fileName);
            ps.executeUpdate();
            ps.close();
            con.close();
            response.setContentType("text/html");
            response.getWriter().println(
                    "<script>" +
                            "alert('File Deleted Successfully!');" +
                            "window.location='ViewFiles.jsp';" +
                            "</script>");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error : " + e.getMessage());

        }
    }
}