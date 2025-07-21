package SmartQuizzer;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Get current session, don't create
        if (session != null) {
            session.invalidate(); // Destroys session
        }
        response.sendRedirect("Login.jsp"); // Redirect to login page
    }
}