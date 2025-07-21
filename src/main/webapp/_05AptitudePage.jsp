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
<title>Aptitude Quiz - Smart Quizzer</title>
<style>
body {
	margin: 0;
	font-family: 'Segoe UI', sans-serif;
	background-color: #f4f4f4
}

.menu-btn {
	position: absolute;
	left: 20px;
	top: 20px;
	font-size: 26px;
	background: none;
	color: #ffd700;
	border: none;
	cursor: pointer;
	z-index: 1001
}

.sidebar {
	position: fixed;
	top: 0;
	left: -260px;
	width: 250px;
	height: 100%;
	background-color: #1d3557;
	color: white;
	padding-top: 60px;
	transition: 0.3s;
	z-index: 1000
}

.sidebar a {
	padding: 14px 24px;
	text-decoration: none;
	color: #ffd700;
	display: block;
	transition: 0.3s;
	font-weight: bold
}

.sidebar a:hover {
	background-color: #0f2542
}

h1 {
	text-align: center;
	background-color: #1d3557;
	color: #ffd700;
	padding: 20px 0;
	margin: 0
}

.quiz-container {
	max-width: 850px;
	margin: 30px auto;
	padding: 20px
}

.question-box {
	background-color: #ffffff;
	color: #0d1117;
	border-radius: 12px;
	padding: 20px;
	margin-bottom: 20px;
	border-left: 6px solid #1d3557;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15)
}

.question {
	font-size: 18px;
	font-weight: bold
}

.options {
	margin-top: 12px;
	display: flex;
	flex-direction: column;
	gap: 10px
}

.options label {
	background-color: #f6f8fa;
	padding: 10px 14px;
	border-radius: 8px;
	cursor: pointer;
	border: 1px solid #ccd6f6;
	transition: background-color 0.2s
}

.options label:hover {
	background-color: #eaeefc
}

input[type="radio"] {
	margin-right: 10px
}

.submit-btn {
	display: block;
	width: 220px;
	margin: 30px auto;
	padding: 14px 24px;
	font-size: 17px;
	color: #1d3557;
	background-color: #ffd700;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	font-weight: bold;
	transition: background-color 0.3s ease
}

.submit-btn:hover {
	background-color: #e6c200
}
</style>
</head>
<body>
	<button class="menu-btn" onclick="toggleMenu()">☰</button>
	<div class="sidebar" id="sidebar">
		<a href="MyProfile.jsp">My Profile</a> <a href="_01JavaHome.jsp">Java</a>
		<a href="_02CHome.jsp">C</a> <a href="_03CppHome.jsp">C++</a> <a
			href="_04PythonHome.jsp">Python</a> <a href="_05AptitudeHome.jsp">Aptitude</a>
	</div>
	<form action="_05Aptitude_Result.jsp" method="post">
	<h1>Aptitude Quiz</h1>
	<div class="quiz-container">
		<div class="question-box">
			<div class="question">1. What is 15% of 200?</div>
			<div class="options">
				<label><input type="radio" name="q1" value="25">25</label> <label><input
					type="radio" name="q1" value="30">30</label> <label><input
					type="radio" name="q1" value="35">35</label> <label><input
					type="radio" name="q1" value="40">40</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">2. If a train travels 180 km in 3 hours,
				what is its average speed?</div>
			<div class="options">
				<label><input type="radio" name="q2" value="30 km/h">30
					km/h</label> <label><input type="radio" name="q2" value="60 km/h">60
					km/h</label> <label><input type="radio" name="q2" value="90 km/h">90
					km/h</label> <label><input type="radio" name="q2" value="120 km/h">120
					km/h</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">3. A man buys a pen for ₹100 and sells it
				for ₹120. What is the profit percentage?</div>
			<div class="options">
				<label><input type="radio" name="q3" value="10%">10%</label>
				<label><input type="radio" name="q3" value="15%">15%</label>
				<label><input type="radio" name="q3" value="20%">20%</label>
				<label><input type="radio" name="q3" value="25%">25%</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">4. What is the square root of 144?</div>
			<div class="options">
				<label><input type="radio" name="q4" value="10">10</label> <label><input
					type="radio" name="q4" value="11">11</label> <label><input
					type="radio" name="q4" value="12">12</label> <label><input
					type="radio" name="q4" value="13">13</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">5. Solve: 72 ÷ 9 × 2 = ?</div>
			<div class="options">
				<label><input type="radio" name="q5" value="14">14</label> <label><input
					type="radio" name="q5" value="16">16</label> <label><input
					type="radio" name="q5" value="18">18</label> <label><input
					type="radio" name="q5" value="20">20</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">6. A car covers 240 km in 4 hours. What
				is the speed?</div>
			<div class="options">
				<label><input type="radio" name="q6" value="50 km/h">50
					km/h</label> <label><input type="radio" name="q6" value="60 km/h">60
					km/h</label> <label><input type="radio" name="q6" value="70 km/h">70
					km/h</label> <label><input type="radio" name="q6" value="80 km/h">80
					km/h</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">7. What is the next number in the series:
				2, 4, 8, 16, ?</div>
			<div class="options">
				<label><input type="radio" name="q7" value="20">20</label> <label><input
					type="radio" name="q7" value="24">24</label> <label><input
					type="radio" name="q7" value="30">30</label> <label><input
					type="radio" name="q7" value="32">32</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">8. The ratio of 2:3 is equal to which of
				the following?</div>
			<div class="options">
				<label><input type="radio" name="q8" value="4:6">4:6</label>
				<label><input type="radio" name="q8" value="6:8">6:8</label>
				<label><input type="radio" name="q8" value="8:10">8:10</label>
				<label><input type="radio" name="q8" value="10:12">10:12</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">9. How many seconds are there in 2 hours?</div>
			<div class="options">
				<label><input type="radio" name="q9" value="3600">3600</label>
				<label><input type="radio" name="q9" value="5400">5400</label>
				<label><input type="radio" name="q9" value="7200">7200</label>
				<label><input type="radio" name="q9" value="9000">9000</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">10. If x = 5, what is the value of x² +
				2x + 1?</div>
			<div class="options">
				<label><input type="radio" name="q10" value="36">36</label>
				<label><input type="radio" name="q10" value="32">32</label>
				<label><input type="radio" name="q10" value="25">25</label>
				<label><input type="radio" name="q10" value="49">49</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">11. If the cost price is ₹80 and profit
				is ₹20, what is the selling price?</div>
			<div class="options">
				<label><input type="radio" name="q11" value="₹90">₹90</label>
				<label><input type="radio" name="q11" value="₹100">₹100</label>
				<label><input type="radio" name="q11" value="₹110">₹110</label>
				<label><input type="radio" name="q11" value="₹120">₹120</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">12. 10% of 250 is:</div>
			<div class="options">
				<label><input type="radio" name="q12" value="20">20</label>
				<label><input type="radio" name="q12" value="25">25</label>
				<label><input type="radio" name="q12" value="30">30</label>
				<label><input type="radio" name="q12" value="35">35</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">13. What is the value of 9³?</div>
			<div class="options">
				<label><input type="radio" name="q13" value="729">729</label>
				<label><input type="radio" name="q13" value="81">81</label>
				<label><input type="radio" name="q13" value="243">243</label>
				<label><input type="radio" name="q13" value="6561">6561</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">14. If 8 men complete a task in 6 days,
				how many days will 4 men take?</div>
			<div class="options">
				<label><input type="radio" name="q14" value="3">3</label> <label><input
					type="radio" name="q14" value="6">6</label> <label><input
					type="radio" name="q14" value="12">12</label> <label><input
					type="radio" name="q14" value="10">10</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">15. What comes next in the series: 5, 10,
				20, 40, ?</div>
			<div class="options">
				<label><input type="radio" name="q15" value="45">45</label>
				<label><input type="radio" name="q15" value="50">50</label>
				<label><input type="radio" name="q15" value="60">60</label>
				<label><input type="radio" name="q15" value="80">80</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">16. 1 kilometer equals how many meters?</div>
			<div class="options">
				<label><input type="radio" name="q16" value="100">100</label>
				<label><input type="radio" name="q16" value="1000">1000</label>
				<label><input type="radio" name="q16" value="10,000">10,000</label>
				<label><input type="radio" name="q16" value="1,000,000">1,000,000</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">17. Which is the smallest prime number?</div>
			<div class="options">
				<label><input type="radio" name="q17" value="0">0</label> <label><input
					type="radio" name="q17" value="1">1</label> <label><input
					type="radio" name="q17" value="2">2</label> <label><input
					type="radio" name="q17" value="3">3</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">18. What is the average of 10, 20, and
				30?</div>
			<div class="options">
				<label><input type="radio" name="q18" value="15">15</label>
				<label><input type="radio" name="q18" value="20">20</label>
				<label><input type="radio" name="q18" value="25">25</label>
				<label><input type="radio" name="q18" value="30">30</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">19. What is the HCF of 12 and 18?</div>
			<div class="options">
				<label><input type="radio" name="q19" value="3">3</label> <label><input
					type="radio" name="q19" value="6">6</label> <label><input
					type="radio" name="q19" value="9">9</label> <label><input
					type="radio" name="q19" value="12">12</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">20. If a = 5 and b = 3, then a² + b² = ?</div>
			<div class="options">
				<label><input type="radio" name="q20" value="25">25</label>
				<label><input type="radio" name="q20" value="34">34</label>
				<label><input type="radio" name="q20" value="15">15</label>
				<label><input type="radio" name="q20" value="50">50</label>
			</div>
		</div>


		<button class="submit-btn">Submit Quiz</button>
		</form>
	</div>

	<script>
		function toggleMenu() {
			const sidebar = document.getElementById("sidebar");
			sidebar.style.left = (sidebar.style.left === "0px") ? "-260px"
					: "0px";
		}
	</script>
</body>
</html>
