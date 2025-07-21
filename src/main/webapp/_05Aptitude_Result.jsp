<%@ page import="java.sql.*,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String username = (String) session.getAttribute("username");
if (username == null) {
	response.sendRedirect("Login.jsp");
	return;
}

// Correct answers
String[] correctAnswers = { "30", "60 km/h", "20%", "12", "16", "60 km/h", "32", "4:6", "7200", "36", "₹100", "25", "729",
		"12", "80", "1000", "2", "20", "6", "34" };

int score = 0;
for (int i = 0; i < correctAnswers.length; i++) {
	String userAnswer = request.getParameter("q" + (i + 1));
	if (userAnswer != null && userAnswer.trim().equalsIgnoreCase(correctAnswers[i])) {
		score++;
	}
}

// Update score in DB
try {
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/madhan", "root", "Madhan1702");
	PreparedStatement ps = conn.prepareStatement("UPDATE score SET aptitude_score = ? WHERE username = ?");
	ps.setInt(1, score);
	ps.setString(2, username);
	ps.executeUpdate();
	conn.close();
} catch (Exception e) {
	out.println("Database error: " + e.getMessage());
}
%>

<!DOCTYPE html>
<html>
<head>
<title>C Quiz Result</title>
<style>
body {
	background-color: #f9f9f9;
	font-family: 'Segoe UI', sans-serif;
	margin: 0;
	padding: 0;
}

.header {
	background-color: #1d3557;
	color: #ffd700;
	padding: 20px;
	text-align: center;
	font-size: 24px;
}

.content {
	max-width: 600px;
	margin: 40px auto;
	padding: 20px;
	background: white;
	border-radius: 10px;
	box-shadow: 0 0 12px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.score {
	font-size: 28px;
	color: #1d3557;
	font-weight: bold;
	margin-bottom: 20px;
}

.home-btn {
	background-color: #1d3557;
	color: #ffd700;
	padding: 10px 20px;
	font-size: 16px;
	text-decoration: none;
	border-radius: 8px;
	display: inline-block;
	margin-top: 20px;
}

.home-btn:hover {
	background-color: #16314a;
}
</style>
</head>
<body>
	<div class="header">Aptitude Quiz Result</div>
	<div class="content">
		<div class="score">
			Your Score:
			<%=score%>
			/ 20
		</div>
		<a href="Home.jsp" class="home-btn">🏠 Back to Home</a>
	</div>
</body>
</html>
