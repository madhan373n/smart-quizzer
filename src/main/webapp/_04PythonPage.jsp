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
<title>Python Quiz - Smart Quizzer</title>
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
			href="#">Python</a> <a href="_05AptitudeHome.jsp">Aptitude</a>
	</div>
	<form action="_04Python_Result.jsp" method="post">
		<h1>Python Programming Quiz</h1>
		<div class="quiz-container">
			<div class="question-box">
				<div class="question">1. What is the output of
					print(type([]))?</div>
				<div class="options">
					<label><input type="radio" name="q1" value="class_list">&lt;class
						'list'&gt;</label> <label><input type="radio" name="q1"
						value="type_list">&lt;type 'list'&gt;</label> <label><input
						type="radio" name="q1" value="list">list</label> <label><input
						type="radio" name="q1" value="list_tag">&lt;list&gt;</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">2. Which keyword is used to define a
					function in Python?</div>
				<div class="options">
					<label><input type="radio" name="q2" value="def">def</label>
					<label><input type="radio" name="q2" value="func">func</label>
					<label><input type="radio" name="q2" value="function">function</label>
					<label><input type="radio" name="q2" value="define">define</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">3. Which of the following is mutable?</div>
				<div class="options">
					<label><input type="radio" name="q3" value="tuple">tuple</label>
					<label><input type="radio" name="q3" value="string">string</label>
					<label><input type="radio" name="q3" value="list">list</label>
					<label><input type="radio" name="q3" value="int">int</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">4. How do you start a comment in Python?</div>
				<div class="options">
					<label><input type="radio" name="q4" value="//">//</label>
					<label><input type="radio" name="q4" value="#">#</label> <label><input
						type="radio" name="q4" value="/*">/*</label> <label><input
						type="radio" name="q4" value="--">--</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">5. What is the output of print(2**3)?</div>
				<div class="options">
					<label><input type="radio" name="q5" value="5">5</label> <label><input
						type="radio" name="q5" value="6">6</label> <label><input
						type="radio" name="q5" value="8">8</label> <label><input
						type="radio" name="q5" value="9">9</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">6. Which of the following is used to
					define a block of code in Python?</div>
				<div class="options">
					<label><input type="radio" name="q6" value="brackets">Brackets</label>
					<label><input type="radio" name="q6" value="indentation">Indentation</label>
					<label><input type="radio" name="q6" value="parentheses">Parentheses</label>
					<label><input type="radio" name="q6" value="quotes">Quotes</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">7. Which method can be used to remove
					items from a list?</div>
				<div class="options">
					<label><input type="radio" name="q7" value="delete">delete()</label>
					<label><input type="radio" name="q7" value="remove">remove()</label>
					<label><input type="radio" name="q7" value="popitem">popitem()</label>
					<label><input type="radio" name="q7" value="discard">discard()</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">8. What is the correct file extension
					for Python files?</div>
				<div class="options">
					<label><input type="radio" name="q8" value=".pt">.pt</label>
					<label><input type="radio" name="q8" value=".python">.python</label>
					<label><input type="radio" name="q8" value=".py">.py</label>
					<label><input type="radio" name="q8" value=".pyt">.pyt</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">
					9. What data type is the object below?<br> x = {"apple",
					"banana", "cherry"}
				</div>
				<div class="options">
					<label><input type="radio" name="q9" value="dictionary">dictionary</label>
					<label><input type="radio" name="q9" value="list">list</label>
					<label><input type="radio" name="q9" value="set">set</label>
					<label><input type="radio" name="q9" value="tuple">tuple</label>
				</div>
			</div>

			<div class="question-box">
				<div class="question">10. Which keyword is used for exception
					handling?</div>
				<div class="options">
					<label><input type="radio" name="q10" value="error">error</label>
					<label><input type="radio" name="q10" value="catch">catch</label>
					<label><input type="radio" name="q10" value="throw">throw</label>
					<label><input type="radio" name="q10" value="try">try</label>
				</div>
			</div>
			<div class="question-box"><div class="question">11. What is the result of: len("Smart Quizzer")?</div><div class="options">
<label><input type="radio" name="q11" value="12"> 12</label>
<label><input type="radio" name="q11" value="13"> 13</label>
<label><input type="radio" name="q11" value="14"> 14</label>
<label><input type="radio" name="q11" value="15"> 15</label>
</div></div>

<div class="question-box"><div class="question">12. What is the output of: print(bool(""))?</div><div class="options">
<label><input type="radio" name="q12" value="True"> True</label>
<label><input type="radio" name="q12" value="False"> False</label>
<label><input type="radio" name="q12" value="0"> 0</label>
<label><input type="radio" name="q12" value="None"> None</label>
</div></div>

<div class="question-box"><div class="question">13. Which operator is used for floor division in Python?</div><div class="options">
<label><input type="radio" name="q13" value="/"> /</label>
<label><input type="radio" name="q13" value="//"> //</label>
<label><input type="radio" name="q13" value="%"> %</label>
<label><input type="radio" name="q13" value="**"> **</label>
</div></div>

<div class="question-box"><div class="question">14. What will be the output of: print("Hello" * 3)?</div><div class="options">
<label><input type="radio" name="q14" value="HelloHelloHello"> HelloHelloHello</label>
<label><input type="radio" name="q14" value="Hello*3"> Hello*3</label>
<label><input type="radio" name="q14" value="Error"> Error</label>
<label><input type="radio" name="q14" value="Hello 3"> Hello 3</label>
</div></div>

<div class="question-box"><div class="question">15. Which method adds an item to the end of a list?</div><div class="options">
<label><input type="radio" name="q15" value="append()"> append()</label>
<label><input type="radio" name="q15" value="insert()"> insert()</label>
<label><input type="radio" name="q15" value="extend()"> extend()</label>
<label><input type="radio" name="q15" value="add()"> add()</label>
</div></div>

<div class="question-box"><div class="question">16. What does the 'pass' statement do?</div><div class="options">
<label><input type="radio" name="q16" value="Skips the current loop"> Skips the current loop</label>
<label><input type="radio" name="q16" value="Exits the program"> Exits the program</label>
<label><input type="radio" name="q16" value="Does nothing"> Does nothing</label>
<label><input type="radio" name="q16" value="Raises an exception"> Raises an exception</label>
</div></div>

<div class="question-box"><div class="question">17. Which of the following is NOT a core data type?</div><div class="options">
<label><input type="radio" name="q17" value="List"> List</label>
<label><input type="radio" name="q17" value="Dictionary"> Dictionary</label>
<label><input type="radio" name="q17" value="Class"> Class</label>
<label><input type="radio" name="q17" value="Tuple"> Tuple</label>
</div></div>

<div class="question-box"><div class="question">18. How do you start a function definition?</div><div class="options">
<label><input type="radio" name="q18" value="function myFunc():"> function myFunc():</label>
<label><input type="radio" name="q18" value="def myFunc():"> def myFunc():</label>
<label><input type="radio" name="q18" value="define myFunc():"> define myFunc():</label>
<label><input type="radio" name="q18" value="start myFunc():"> start myFunc():</label>
</div></div>

<div class="question-box"><div class="question">19. What will be the value of: 3 &lt;= 3 and 3 &gt; 2?</div><div class="options">
<label><input type="radio" name="q19" value="True"> True</label>
<label><input type="radio" name="q19" value="False"> False</label>
<label><input type="radio" name="q19" value="None"> None</label>
<label><input type="radio" name="q19" value="Error"> Error</label>
</div></div>

<div class="question-box"><div class="question">20. Which of the following is used to handle exceptions?</div><div class="options">
<label><input type="radio" name="q20" value="try-except"> try-except</label>
<label><input type="radio" name="q20" value="try-catch"> try-catch</label>
<label><input type="radio" name="q20" value="catch-throw"> catch-throw</label>
<label><input type="radio" name="q20" value="handle-error"> handle-error</label>
</div></div>


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
