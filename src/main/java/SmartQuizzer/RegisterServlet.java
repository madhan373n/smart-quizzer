package SmartQuizzer;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        String name = request.getParameter("firstname");
        String email = request.getParameter("email");
        String user = request.getParameter("username");
        String password = request.getParameter("password");

        try {
            Connection conn = DBConnection.getConnection();
            conn.setAutoCommit(false); // Start transaction

            // Insert into customer table
            PreparedStatement ps = conn.prepareStatement(
                "INSERT INTO customer (name, email, user, password) VALUES (?, ?, ?, ?)"
            );
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, user);
            ps.setString(4, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                // Also insert into scores table with default scores = 0
                PreparedStatement psScore = conn.prepareStatement(
                    "INSERT INTO score (username) VALUES (?)"
                );
                psScore.setString(1, user);
                psScore.executeUpdate();
                psScore.close();

                conn.commit(); // Commit both inserts
                request.setAttribute("msg", "Registration successful. Please log in.");
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            } else {
                conn.rollback(); // Roll back if customer insert fails
                request.setAttribute("errorMsg", "Registration failed. Try again.");
                request.getRequestDispatcher("Register.jsp").forward(request, response);
            }

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMsg", "Server error. Try again later.");
            request.getRequestDispatcher("Register.jsp").forward(request, response);
        }
    }
}
