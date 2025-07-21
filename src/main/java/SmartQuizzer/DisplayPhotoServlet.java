package SmartQuizzer;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/DisplayPhotoServlet")
public class DisplayPhotoServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        try (Connection conn = DBConnection.getConnection()) {
            PreparedStatement ps = conn.prepareStatement("SELECT photo FROM user_photos WHERE username = ?");
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                Blob blob = rs.getBlob("photo");
                InputStream inputStream = blob.getBinaryStream();
                int length = (int) blob.length();
                byte[] bytes = new byte[length];
                inputStream.read(bytes);
                response.setContentType("image/jpeg");
                response.getOutputStream().write(bytes);
            }

            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}