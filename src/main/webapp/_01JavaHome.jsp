<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
if (session.getAttribute("username") == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
  <title>Java Introduction - Smart Quizzer</title>
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
      color: #F0F0F0;
      padding-top: 60px;
      transition: 0.3s;
      z-index: 1000;
    }

    .sidebar a {
      padding: 14px 24px;
      text-decoration: none;
      color: #F0F0F0;
      display: block;
      transition: 0.3s;
    }

    .sidebar a:hover {
      background-color: #383838;
    }

    .content {
      max-width: 900px;
      margin: 40px auto;
      padding: 30px;
      background: #1A233A;
      border-radius: 12px;
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
    }

    .content h2, .content h3 {
      color: #D4AF37;
    }

    ul li {
      margin-bottom: 10px;
    }

    pre {
      background-color: #121c2c;
      padding: 15px;
      border-radius: 8px;
      color: #F0F0F0;
      overflow-x: auto;
    }

    .start-btn {
      display: block;
      margin: 40px auto 20px;
      background-color: #28a745;
      color: white;
      padding: 14px 28px;
      border: none;
      font-size: 18px;
      border-radius: 10px;
      cursor: pointer;
      transition: 0.3s;
    }

    .start-btn:hover {
      background-color: #218838;
    }

    @media (max-width: 768px) {
      .content {
        margin: 20px;
        padding: 20px;
      }
    }
  </style>
</head>
<body>

  <button class="menu-btn" onclick="toggleMenu()">☰</button>

  <div class="sidebar" id="sidebar">
     <a href="MyProfile.jsp">My Profile</a>
     <a href="#">Java</a>
     <a href="_02CHome.jsp">C</a>
     <a href="_03CppHome.jsp">C++</a>
     <a href="_04PythonHome.jsp">Python</a>
     <a href="_05AptitudeHome.jsp">Aptitude</a>
  </div>

  <header>Java - Smart Quizzer</header>

  <div class="content">
    <h2>Introduction to Java</h2>
    <p>Java is a high-level, object-oriented programming language developed by Sun Microsystems and released in 1995. It is platform-independent, which means <strong>"write once, run anywhere"</strong> due to its use of the Java Virtual Machine (JVM).</p>

    <h3>Features of Java:</h3>
    <ul>
      <li><strong>Simple</strong> – Easy to learn and use</li>
      <li><strong>Object-Oriented</strong> – Everything in Java is treated as an object</li>
      <li><strong>Platform Independent</strong> – Java programs can run on any device with a JVM</li>
      <li><strong>Secure</strong> – Provides a secure runtime environment</li>
      <li><strong>Multithreaded</strong> – Supports multithreaded programming</li>
    </ul>

    <h3>Basic Syntax Example:</h3>
    <pre>
public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}
    </pre>

    <h3>Java Applications:</h3>
    <ul>
      <li>Mobile applications (especially Android)</li>
      <li>Web-based applications</li>
      <li>Enterprise applications</li>
      <li>Scientific applications</li>
    </ul>

    <button class="start-btn" onclick="location.href='_01JavaPage.jsp'">Start Quiz</button>
  </div>

  <script>
    function toggleMenu() {
      const sidebar = document.getElementById("sidebar");
      sidebar.style.left = sidebar.style.left === "0px" ? "-260px" : "0px";
    }
  </script>
</body>
</html>
    