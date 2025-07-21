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
    <title>C++ Programming Introduction - Smart Quizzer</title>
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
        <a href="#">C++</a>
        <a href="_04PythonHome.jsp">Python</a>
        <a href="_05AptitudeHome.jsp">Aptitude</a>
    </div>

    <header>C++ Programming - Smart Quizzer</header>

    <div class="content">
        <h2>Introduction to C++</h2>
        <p>C++ is an extension of the C language developed by Bjarne Stroustrup. It supports object-oriented programming and is widely used in game development, competitive programming, and large-scale system development.</p>

        <h3>Key Features of C++:</h3>
        <ul>
            <li><strong>Object-Oriented</strong> – Supports classes, inheritance, polymorphism</li>
            <li><strong>Portable</strong> – Code can be reused on different platforms</li>
            <li><strong>Fast Execution</strong> – Compiled and executed quickly</li>
            <li><strong>Extensive Library Support</strong> – STL provides useful data structures and algorithms</li>
            <li><strong>Low-level Manipulation</strong> – Allows pointer-level memory access</li>
        </ul>

        <h3>Basic Syntax Example:</h3>
        <pre>
#include &lt;iostream&gt;
using namespace std;

int main() {
    cout &lt;&lt; "Hello, C++ World!" &lt;&lt; endl;
    return 0;
}
        </pre>

        <h3>Applications of C++:</h3>
        <ul>
            <li>Game development</li>
            <li>GUI-based applications</li>
            <li>Compilers and OS development</li>
            <li>Real-time systems</li>
        </ul>

        <button class="start-btn" onclick="location.href='_03CppPage.jsp'">Start Quiz</button>
    </div>

    <script>
        function toggleMenu() {
            const sidebar = document.getElementById("sidebar");
            sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
        }
    </script>
</body>
</html>
