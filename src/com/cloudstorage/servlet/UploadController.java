package com.cloudstorage.servlet;
import com.cloudstorage.util.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.time.LocalDate;

@MultipartConfig
public class UploadController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {
        try {

            Part filePart = request.getPart("file");
            String fileName = filePart.getSubmittedFileName();
            String uploadPath =
                    "C:/apache-tomcat-9.0.117/webapps/CloudFileStorage/uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            String filePath = uploadPath + File.separator + fileName;
            filePart.write(filePath);
            HttpSession session = request.getSession();
            int userId = (Integer) session.getAttribute("userId");
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO files(user_id, filename, filepath, upload_date) VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setString(2, fileName);
            ps.setString(3, filePath);
            ps.setString(4, LocalDate.now().toString());
            ps.executeUpdate();
            ps.close();
            con.close();
            response.setContentType("text/html");
            response.getWriter().println(
                    "<script>" +
                            "alert('File Uploaded Successfully!');" +
                            "window.location='dashboard.jsp';" +
                            "</script>");

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Upload Failed : " + e.getMessage());

        }
    }
}