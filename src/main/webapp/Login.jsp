<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<style>
body {
margin:0;
padding:0;
font-family:'Segoe UI',sans-serif;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#f6d365,#fda085,#fbc2eb,#a6c1ee);
background-size:400% 400%;
animation:bgAnim 15s ease infinite;
}
@keyframes bgAnim {
0%{background-position:0% 50%;}
50%{background-position:100% 50%;}
100%{background-position:0% 50%;}
}
.login-box {
background:rgba(255,255,255,0.9);
padding:40px;
border-radius:20px;
box-shadow:0 0 20px rgba(0,0,0,0.2);
text-align:center;
width:300px;
}
.login-box h2 {
margin-bottom:20px;
color:#333;
}
.login-box input {
width:100%;
padding:12px;
margin:10px 0;
border:1px solid #ccc;
border-radius:10px;
font-size:16px;
}
.login-box button {
width:100%;
padding:12px;
background:#333;
color:#fff;
border:none;
border-radius:10px;
font-size:16px;
cursor:pointer;
transition:0.3s;
}
.login-box button:hover {
background:#555;
}
.register-link {
margin-top:15px;
font-size:14px;
}
.register-link a {
color:#007bff;
text-decoration:none;
}
.register-link a:hover {
text-decoration:underline;
}
</style>
</head>
<body>
<div class="login-box">
<h2>Login</h2>
<form action="LoginServlet" method="post">
<%
    if (request.getAttribute("msg") != null) {
%>
    <p style="color: green;"><%= request.getAttribute("msg") %></p>
<%
    }
%>
<%
    String error = (String) request.getAttribute("errorMsg");
    if (error != null) {
%>
    <p style="color:red; font-weight:bold;"><%= error %></p>
<%
    }
%>
<input type="text" name="username" placeholder="Username" required>
<input type="password" name="password" placeholder="Password" required>
<button type="submit">Login</button>
<div class="register-link">Don't have an account? <a href="Register.jsp">Register</a></div>
</form>
</div>
</body>
</html>
   