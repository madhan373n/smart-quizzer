package SmartQuizzer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ResetScoreServlet")
public class ResetScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");

            try {
                Connection conn = DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement(
                    "UPDATE score SET java_score=0, c_score=0, cpp_score=0, python_score=0, aptitude_score=0 WHERE username=?"
                );
                ps.setString(1, username);
                int rows = ps.executeUpdate();

                ps.close();
                conn.close();

                // Optional: Add a success message (can be handled via session or request)
                response.sendRedirect("MyProfile.jsp");
            } catch (Exception e) {
                e.printStackTrace();
                response.sendRedirect("MyProfile.jsp"); // Still redirect, or show error page
            }
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}