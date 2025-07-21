<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if (session.getAttribute("username") == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>C Programming Introduction - Smart Quizzer</title>
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
        <a href="#">C</a>
        <a href="_03CppHome.jsp">C++</a>
        <a href="_04PythonHome.jsp">Python</a>
        <a href="_05AptitudeHome.jsp">Aptitude</a>
    </div>

    <header>C Programming - Smart Quizzer</header>

    <div class="content">
        <h2>Introduction to C</h2>
        <p>C is a general-purpose, procedural programming language developed in the early 1970s by Dennis Ritchie at Bell Labs. It has influenced many other modern programming languages and is widely used for system and embedded programming.</p>

        <h3>Features of C:</h3>
        <ul>
            <li><strong>Simple</strong> – Easy to understand and use</li>
            <li><strong>Efficient</strong> – Provides low-level memory access</li>
            <li><strong>Portable</strong> – Programs written in C can run on different machines</li>
            <li><strong>Structured</strong> – Supports modular programming through functions</li>
            <li><strong>Fast</strong> – Compilation and execution is faster than many other languages</li>
        </ul>

        <h3>Basic Syntax Example:</h3>
        <pre>
#include &lt;stdio.h&gt;

int main() {
    printf("Hello, World!\n");
    return 0;
}
        </pre>

        <h3>Applications of C:</h3>
        <ul>
            <li>Operating system development</li>
            <li>Embedded systems</li>
            <li>Compiler and interpreter development</li>
            <li>Game development</li>
        </ul>

        <button class="start-btn" onclick="location.href='_02CPage.jsp'">Start Quiz</button>
    </div>

    <script>
        function toggleMenu() {
            const sidebar = document.getElementById("sidebar");
            sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
        }
    </script>
</body>
</html>

<
