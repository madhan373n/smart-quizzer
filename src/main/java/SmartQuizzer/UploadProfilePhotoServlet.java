package SmartQuizzer;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@WebServlet("/UploadProfilePhotoServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 5) // 5MB max
public class UploadProfilePhotoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");
        Part filePart = request.getPart("photo");

        if (filePart != null && username != null) {
            InputStream inputStream = filePart.getInputStream();

            try (Connection conn = DBConnection.getConnection()) {
                PreparedStatement ps = conn.prepareStatement(
                    "REPLACE INTO user_photos (username, photo) VALUES (?, ?)"
                );
                ps.setString(1, username);
                ps.setBlob(2, inputStream);
                ps.executeUpdate();
                ps.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("MyProfile.jsp");
    }
}