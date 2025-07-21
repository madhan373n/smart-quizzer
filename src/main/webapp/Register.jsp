<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>User Registration | Online Quiz App</title>
<style>
body {
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	text-align: center;
}

fieldset {
	border: 2px solid #ccc;
	padding: 30px 40px;
	border-radius: 15px;
	width: 350px;
}

legend {
	font-size: 22px;
	font-weight: bold;
}

input[type="text"], input[type="email"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #aaa;
	border-radius: 8px;
	font-size: 16px;
}

input[type="submit"] {
	background-color: #2575fc;
	color: white;
	border: none;
	padding: 10px 20px;
	margin-top: 15px;
	font-size: 16px;
	border-radius: 8px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #1a5adf;
}

.logo {
	margin-bottom: 20px;
}

.logo img {
	width: 200px;
}
</style>
</head>
<body>
	<div class="form-container">
		<div class="logo">
			<!-- 🖼️ Replace the image source below with your logo path -->
			<img src="images/EagleLogo.png" alt="App Logo">
		</div>
		<form action="register" method="post">
			<fieldset>
				<legend>Register</legend>
				<%
				if (request.getAttribute("errorMsg") != null) {
				%>
				<p style="color: red;"><%=request.getAttribute("errorMsg")%></p>
				<%
				}
				%>

				<%
				if (request.getAttribute("msg") != null) {
				%>
				<p style="color: green;"><%=request.getAttribute("msg")%></p>
				<%
				}
				%>
				<input type="text" name="firstname" placeholder="Name" required>
				<input type="email" name="email" placeholder="Email" required>
				<input type="text" name="username" placeholder="User Name" required>
				<input type="password" name="password" placeholder="Password"
					required> <input type="submit" value="Register">
			</fieldset>
		</form>
	</div>
</body>
</html>
