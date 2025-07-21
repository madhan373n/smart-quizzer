<%@ page import="java.sql.*" %>
<%@ page import="SmartQuizzer.DBConnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
String username = (String) session.getAttribute("username");
if (username == null) {
    response.sendRedirect("Login.jsp");
    return;
}

// Correct answers array
String[] answers = {"4 bytes","c","c","b","b","b","b","a","a","a","b","b","c","b","b","c","a","c","a","a"};
int score = 0;
for (int i = 1; i <= 20; i++) {
    String ans = request.getParameter("q" + i);
    if (ans != null && ans.equals(answers[i - 1])) {
        score++;
    }
}

// Store score in DB using existing DBConnection
try {
    Connection conn = DBConnection.getConnection();
    PreparedStatement ps = conn.prepareStatement("UPDATE score SET java_score = ? WHERE username = ?");
    ps.setInt(1, score);
    ps.setString(2, username);
    ps.executeUpdate();
    ps.close();
    conn.close();
} catch (Exception e) {
    e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
<head>
    <title>Java Quiz Result</title>
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f4f4;
        }
        h1 {
            background-color: #1d3557;
            color: #ffd700;
            padding: 20px;
            margin: 0;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 60px auto;
            padding: 40px;
            background: #ffffff;
            border-radius: 12px;
            text-align: center;
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
        }
        .score {
            font-size: 28px;
            color: #1d3557;
            margin-bottom: 30px;
            font-weight: bold;
        }
        .home-btn {
            padding: 12px 24px;
            font-size: 16px;
            background-color: #1d3557;
            color: #ffd700;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            text-decoration: none;
        }
        .home-btn:hover {
            background-color: #003566;
        }
    </style>
</head>
<body>

<h1>Java Quiz Result</h1>

<div class="container">
    <div class="score">You Scored: <%= score %> / 20</div>
    <a class="home-btn" href="Home.jsp">🏠 Back to Home</a>
</div>

</body>
</html>
