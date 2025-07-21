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
    <meta charset="UTF-8">
    <title>Python Programming Introduction - Smart Quizzer</title>
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
        <a href="_01JavaHome.jsp">Java</a>
        <a href="_02CHome.jsp">C</a>
        <a href="_03CppHome.jsp">C++</a>
        <a href="#">Python</a>
        <a href="_05AptitudeHome.jsp">Aptitude</a>
    </div>

    <header>Python Programming - Smart Quizzer</header>

    <div class="content">
        <h2>Introduction to Python</h2>
        <p>Python is a high-level, interpreted programming language known for its simplicity and readability. It supports multiple programming paradigms and is widely used in web development, data analysis, AI, and automation.</p>

        <h3>Key Features of Python:</h3>
        <ul>
            <li><strong>Easy to Learn</strong> – Simple syntax similar to English</li>
            <li><strong>Interpreted</strong> – No need for compilation</li>
            <li><strong>Object-Oriented</strong> – Supports classes and objects</li>
            <li><strong>Extensive Libraries</strong> – Large standard and third-party library support</li>
            <li><strong>Platform Independent</strong> – Runs on all major platforms</li>
        </ul>

        <h3>Basic Syntax Example:</h3>
        <pre>
print("Hello, Python World!")
        </pre>

        <h3>Applications of Python:</h3>
        <ul>
            <li>Web development (Django, Flask)</li>
            <li>Data Science and Machine Learning</li>
            <li>Automation and Scripting</li>
            <li>Game development</li>
        </ul>

        <button class="start-btn" onclick="location.href='_04PythonPage.jsp'">Start Quiz</button>
    </div>

    <script>
        function toggleMenu() {
            const sidebar = document.getElementById("sidebar");
            sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
        }
    </script>
</body>
</html>
