<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome | Online Quiz App</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #6a11cb, #2575fc); /* gradient background */
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            font-family: 'Segoe UI', sans-serif;
        }

        .logo-container {
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }

        .logo-container img {
            width: 700px; /* increased size */
            height: auto;
            border: none; /* no border */
            box-shadow: none; /* no shadow */
            border-radius: 0; /* no corner rounding */
            background: transparent; /* ensure transparency */
        }

        .logo-container h1 {
            color: white;
            margin-top: 20px;
            font-size: 28px;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: scale(0.95); }
            to { opacity: 1; transform: scale(1); }
        }
    </style>

    <!-- 🔄 Automatically go to login.jsp after 6 seconds -->
    <meta http-equiv="refresh" content="6;url=Login.jsp">
</head>
<body>
     
    <div class="logo-container">
        <!-- 📸 Replace this with your logo image --> 
        <img src="images/EagleLogo.png" alt="Project Logo">
    </div>
</body>
</html>
