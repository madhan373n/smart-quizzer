<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
if (session.getAttribute("username") == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="SmartQuizzer.DBConnection" %>
<%
    String username = (String) session.getAttribute("username");
    String email = (String) session.getAttribute("email");
    String name = (String) session.getAttribute("name");
    String photoPath = "profile_photos/" + username + ".jpg";
    int javaScore = 0, cScore = 0, cppScore = 0, pythonScore = 0, aptitudeScore = 0;

    try {
        Connection conn = DBConnection.getConnection();
        PreparedStatement ps = conn.prepareStatement("SELECT * FROM score WHERE username = ?");
        ps.setString(1, username);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            javaScore = rs.getInt("java_score");
            cScore = rs.getInt("c_score");
            cppScore = rs.getInt("cpp_score");
            pythonScore = rs.getInt("python_score");
            aptitudeScore = rs.getInt("aptitude_score");
        }
        rs.close();
        ps.close();
        conn.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Profile - Smart Quizzer</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #0A1931;
            color: #F0F0F0;
        }
        header {
            background-color: #0A1931;
            color: #D4AF37;
            padding: 24px 20px;
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            border-bottom: 2px solid #D4AF37;
        }
        .menu-btn {
            position: absolute;
            left: 20px;
            top: 20px;
            font-size: 26px;
            background: none;
            color: #D4AF37;
            border: none;
            cursor: pointer;
            z-index: 1001;
        }
        .sidebar {
            position: fixed;
            top: 0;
            left: -260px;
            width: 250px;
            height: 100%;
            background-color: #282828;
            padding-top: 60px;
            transition: 0.3s;
            z-index: 1000;
        }
        .sidebar a {
            padding: 14px 24px;
            text-decoration: none;
            color: #F0F0F0;
            display: block;
        }
        .sidebar a:hover {
            background-color: #383838;
        }
        .content {
            max-width: 1000px;
            margin: 50px auto;
            padding: 30px;
        }
        .profile-box {
            background-color: #1A233A;
            padding: 30px;
            border-radius: 12px;
            text-align: center;
            margin-bottom: 40px;
        }
        .profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 4px solid #D4AF37;
        }
        .upload-btn {
            margin-top: 10px;
        }
        .profile-info {
            margin-top: 20px;
        }
        .score-section {
            background-color: #1A233A;
            padding: 30px;
            border-radius: 12px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px;
        }
        .score-box {
            background-color: #0A1931;
            border: 2px solid #D4AF37;
            padding: 20px;
            border-radius: 10px;
            width: 160px;
            text-align: center;
        }
        .score-box h3 {
            color: #D4AF37;
            margin-bottom: 10px;
        }
        .score-box p {
            font-size: 20px;
        }
    </style>
</head>
<body>
    <button class="menu-btn" onclick="toggleMenu()">☰</button>
    <div class="sidebar" id="sidebar">
        <a href="Home.jsp">Home</a>
        <a href="_01JavaHome.jsp">Java</a>
        <a href="_02CHome.jsp">C</a>
        <a href="_03CppHome.jsp">C++</a>
        <a href="_04PythonHome.jsp">Python</a>
        <a href="_05AptitudeHome.jsp">Aptitude</a>
         <a href="LogoutServlet" style="color:red;"><strong>Logout</strong></a>
    </div>

    <header>My Profile - Smart Quizzer</header>

    <div class="content">
        <div class="profile-box">
            <img src="DisplayPhotoServlet?username=<%= username %>" alt="Profile Photo" class="profile-pic">
            <form class="upload-btn" action="UploadProfilePhotoServlet" method="post" enctype="multipart/form-data">
                <input type="file" name="photo" accept="image/*">
                <input type="submit" value="Upload">
            </form>
            <div class="profile-info">
                <p><strong>Name:</strong> <%= name != null ? name : "Guest" %></p>
                <p><strong>Email:</strong> <%= email != null ? email : "N/A" %></p>
            </div>
        </div>

        <div class="score-section">
            <div class="score-box">
                <h3>Java</h3>
                <p><%= javaScore %> / 20</p>
            </div>
            <div class="score-box">
                <h3>C</h3>
                <p><%= cScore %> / 20</p>
            </div>
            <div class="score-box">
                <h3>C++</h3>
                <p><%= cppScore %> / 20</p>
            </div>
            <div class="score-box">
                <h3>Python</h3>
                <p><%= pythonScore %> / 20</p>
            </div>
            <div class="score-box">
                <h3>Aptitude</h3>
                <p><%= aptitudeScore %> / 20</p>
            </div>
       <div style="margin-top: 30px; width: 100%; text-align: center;">
    <form action="ResetScoreServlet" method="post" style="display:inline-block;">
        <button type="submit" title="Reset Scores" style="background-color: #0A1931; border: 2px solid #D4AF37; border-radius: 50%; width: 60px; height: 60px; cursor: pointer;">
            <span style="font-size: 32px; color: #D4AF37;">&#x21bb;</span>
        </button>
    </form>
</div>
        </div>
       
    </div>

    <script>
        function toggleMenu() {
            const sidebar = document.getElementById("sidebar");
            sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
        }
    </script>
</body>
</html>