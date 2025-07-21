package SmartQuizzer;

import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

 public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            conn = DBConnection.getConnection();
            ps = conn.prepareStatement("SELECT * FROM customer WHERE user=? AND password=?");
            ps.setString(1, username);
            ps.setString(2, password);
            rs = ps.executeQuery();

            if (rs.next()) {
                // Login success
                HttpSession session = request.getSession();
                session.setAttribute("username", username);
                session.setAttribute("email", rs.getString("email"));
                session.setAttribute("name", rs.getString("name"));

                request.getRequestDispatcher("Home.jsp").forward(request, response);
            } else {
                // Invalid login
                request.setAttribute("errorMsg", "Invalid username or password!");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Server error. Try again later.");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } finally {
            try { if (rs != null) rs.close(); } catch (Exception e) {}
            try { if (ps != null) ps.close(); } catch (Exception e) {}
            try { if (conn != null) conn.close(); } catch (Exception e) {}
        }
    }
}
  