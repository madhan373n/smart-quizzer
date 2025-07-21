<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
if (session.getAttribute("username") == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Smart Quizzer</title>
<style>
body {
  margin: 0;
  font-family: 'Times New Roman', serif;
  background-color: #0a0f2c;
  color: #ffffff;
  overflow-x: hidden;
}
.header {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: #0a0f2c;
  padding: 25px;
  box-shadow: 0 4px 10px rgba(0,0,0,0.6);
}
.app-title {
  font-size: 48px;
  font-weight: bold;
  color: #d4af37;
}
.menu-icon {
  font-size: 32px;
  cursor: pointer;
  position: absolute;
  top: 30px;
  left: 30px;
  color: #d4af37;
}
.sidebar {
  height: 100%;
  width: 0;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #1c1f2b;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
  box-shadow: 2px 0 15px rgba(0,0,0,0.6);
  z-index: 1000;
}
.sidebar a {
  padding: 15px 30px;
  text-decoration: none;
  font-size: 18px;
  color: #ffffff;
  display: block;
  transition: 0.3s;
}
.sidebar a:hover {
  background-color: #2f3242;
  color: #d4af37;
}
.description {
  text-align: center;
  padding: 50px 20px;
  font-size: 20px;
  max-width: 900px;
  margin: auto;
  color: #e0e0e0;
  line-height: 1.6;
}
</style>
<script>
function openSidebar() {
  document.getElementById("sidebar").style.width = "250px";
}
function closeSidebar() {
  document.getElementById("sidebar").style.width = "0";
}
</script>
</head>
<body>

<!-- Sidebar -->
<div id="sidebar" class="sidebar">
  <a href="javascript:void(0)" onclick="closeSidebar()" style="font-weight:bold;">&times; Close</a>
  <a href="MyProfile.jsp">My Profile</a>
  <a href="_01JavaHome.jsp">Java</a>
  <a href="_02CHome.jsp">C</a>
  <a href="_03CppHome.jsp">C++</a>
  <a href="_04PythonHome.jsp">Python</a>
  <a href="_05AptitudeHome.jsp">Aptitude</a>
</div>

<!-- Header -->
<div class="header">
  <span class="menu-icon" onclick="openSidebar()">☰</span>
  <div class="app-title">Smart Quizzer</div>
</div>

<!-- Description -->
<div class="description">
  <p>
    Welcome to <b style="color:#d4af37;">Smart Quizzer</b> – the premium platform to test and sharpen your programming and aptitude skills. 
    Designed with a sleek and modern interface, Smart Quizzer gives you the competitive edge you need. 
    Select a topic and start your journey to excellence.
  </p>
</div>

</body>
</html>
