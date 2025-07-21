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
<title>C++ Quiz - Smart Quizzer</title>
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
		<a href="#">My Profile</a> <a href="_01JavaHome.jsp">Java</a> <a
			href="_02CHome.jsp">C</a> <a href="#">C++</a> <a
			href="_04PythonHome.jsp">Python</a> <a href="_05AptitudeHome.jsp">Aptitude</a>
	</div>
    <form action="_03Cpp_Result.jsp" method="post">
	<h1>C++ Programming Quiz</h1>

	<div class="quiz-container">
		<div class="question-box">
			<div class="question">1. What is the correct way to declare a
				C++ function?</div>
			<div class="options">
				<label><input type="radio" name="q1" value="int function();">
					int function();</label> <label><input type="radio" name="q1"
					value="function int();"> function int();</label> <label><input
					type="radio" name="q1" value="declare int function();">
					declare int function();</label> <label><input type="radio"
					name="q1" value="void function; int();"> void function;
					int();</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">2. Which operator is used to allocate
				memory dynamically in C++?</div>
			<div class="options">
				<label><input type="radio" name="q2" value="malloc">
					malloc</label> <label><input type="radio" name="q2" value="alloc">
					alloc</label> <label><input type="radio" name="q2" value="new">
					new</label> <label><input type="radio" name="q2" value="calloc">
					calloc</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">3. Which keyword is used for exception
				handling in C++?</div>
			<div class="options">
				<label><input type="radio" name="q3" value="try">
					try</label> <label><input type="radio" name="q3" value="catch">
					catch</label> <label><input type="radio" name="q3" value="throw">
					throw</label> <label><input type="radio" name="q3" value="final">
					final</label>
			</div>
		</div>
		<div class="question-box">
			<div class="question">4. Which of the following is a valid C++
				identifier?</div>
			<div class="options">
				<label><input type="radio" name="q4" value="2value">
					2value</label> <label><input type="radio" name="q4" value="value_2">
					value_2</label> <label><input type="radio" name="q4" value="@value">
					@value</label> <label><input type="radio" name="q4" value="#value">
					#value</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">5. Which of the following is a correct
				class declaration?</div>
			<div class="options">
				<label><input type="radio" name="q5"
					value="class MyClass {};"> class MyClass {};</label> <label><input
					type="radio" name="q5" value="MyClass class {}; "> MyClass
					class {}; </label> <label><input type="radio" name="q5"
					value="declare class MyClass {};"> declare class MyClass
					{};</label> <label><input type="radio" name="q5"
					value="class = MyClass {};"> class = MyClass {};</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">6. What is the output of: cout << 5 / 2;</div>
			<div class="options">
				<label><input type="radio" name="q6" value="2.5">
					2.5</label> <label><input type="radio" name="q6" value="3">
					3</label> <label><input type="radio" name="q6" value="2"> 2</label>
				<label><input type="radio" name="q6" value="5"> 5</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">7. What is the correct way to create an
				object in C++?</div>
			<div class="options">
				<label><input type="radio" name="q7" value="new MyClass();">
					new MyClass();</label> <label><input type="radio" name="q7"
					value="MyClass obj();"> MyClass obj();</label> <label><input
					type="radio" name="q7" value="MyClass obj;"> MyClass obj;</label> <label><input
					type="radio" name="q7" value="object MyClass;"> object
					MyClass;</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">8. Which operator is used to access
				members of a class via pointer?</div>
			<div class="options">
				<label><input type="radio" name="q8" value="->"> -></label>
				<label><input type="radio" name="q8" value="."> .</label> <label><input
					type="radio" name="q8" value="::"> ::</label> <label><input
					type="radio" name="q8" value="=>"> =></label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">9. What is the use of 'this' pointer in
				C++?</div>
			<div class="options">
				<label><input type="radio" name="q9"
					value="It refers to current object"> It refers to current
					object</label> <label><input type="radio" name="q9"
					value="It refers to base class"> It refers to base class</label> <label><input
					type="radio" name="q9" value="It refers to global object">
					It refers to global object</label> <label><input type="radio"
					name="q9" value="It refers to static method"> It refers to
					static method</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">10. What is the output of sizeof(char)?</div>
			<div class="options">
				<label><input type="radio" name="q10" value="2"> 2</label> <label><input
					type="radio" name="q10" value="4"> 4</label> <label><input
					type="radio" name="q10" value="1"> 1</label> <label><input
					type="radio" name="q10" value="8"> 8</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">11. Which of these is a correct
				destructor declaration in C++?</div>
			<div class="options">
				<label><input type="radio" name="q11" value="~MyClass();">
					~MyClass();</label> <label><input type="radio" name="q11"
					value="destructor MyClass();"> destructor MyClass();</label> <label><input
					type="radio" name="q11" value="delete MyClass();"> delete
					MyClass();</label> <label><input type="radio" name="q11"
					value="~MyClass{};"> ~MyClass{};</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">12. Which header file is used for I/O in
				C++?</div>
			<div class="options">
				<label><input type="radio" name="q12" value="iostream">
					iostream</label> <label><input type="radio" name="q12"
					value="stdio.h"> stdio.h</label> <label><input type="radio"
					name="q12" value="conio.h"> conio.h</label> <label><input
					type="radio" name="q12" value="input.h"> input.h</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">13. What does 'cin' do in C++?</div>
			<div class="options">
				<label><input type="radio" name="q13"
					value="Displays output"> Displays output</label> <label><input
					type="radio" name="q13" value="Clears screen"> Clears
					screen</label> <label><input type="radio" name="q13"
					value="Takes input"> Takes input</label> <label><input
					type="radio" name="q13" value="Shows memory"> Shows memory</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">14. Which keyword is used to define a
				constant in C++?</div>
			<div class="options">
				<label><input type="radio" name="q14" value="let">
					let</label> <label><input type="radio" name="q14" value="final">
					final</label> <label><input type="radio" name="q14" value="const">
					const</label> <label><input type="radio" name="q14"
					value="constant"> constant</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">15. Which of the following is used to
				comment a single line in C++?</div>
			<div class="options">
				<label><input type="radio" name="q15" value="//"> //</label>
				<label><input type="radio" name="q15" value="/*"> /*</label>
				<label><input type="radio" name="q15" value="<!--">
					!--</label> <label><input type="radio" name="q15" value="#">
					#</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">16. What is the correct syntax to declare
				a pointer?</div>
			<div class="options">
				<label><input type="radio" name="q16" value="int ptr;">
					int ptr;</label> <label><input type="radio" name="q16"
					value="int *ptr;"> int *ptr;</label> <label><input
					type="radio" name="q16" value="ptr int;"> ptr int;</label> <label><input
					type="radio" name="q16" value="pointer int;"> pointer int;</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">17. Which keyword is used for inheritance
				in C++?</div>
			<div class="options">
				<label><input type="radio" name="q17" value="base">
					base</label> <label><input type="radio" name="q17" value="extends">
					extends</label> <label><input type="radio" name="q17"
					value="inherits"> inherits</label> <label><input
					type="radio" name="q17" value="public"> public</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">18. Which data type is used to store
				decimal numbers in C++?</div>
			<div class="options">
				<label><input type="radio" name="q18" value="int">
					int</label> <label><input type="radio" name="q18" value="float">
					float</label> <label><input type="radio" name="q18" value="char">
					char</label> <label><input type="radio" name="q18" value="bool">
					bool</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">19. Which of the following supports
				function overloading in C++?</div>
			<div class="options">
				<label><input type="radio" name="q19" value="C"> C</label> <label><input
					type="radio" name="q19" value="Python"> Python</label> <label><input
					type="radio" name="q19" value="Java"> Java</label> <label><input
					type="radio" name="q19" value="C++"> C++</label>
			</div>
		</div>

		<div class="question-box">
			<div class="question">20. Which keyword is used for
				polymorphism in C++?</div>
			<div class="options">
				<label><input type="radio" name="q20" value="virtual">
					virtual</label> <label><input type="radio" name="q20"
					value="override"> override</label> <label><input
					type="radio" name="q20" value="base"> base</label> <label><input
					type="radio" name="q20" value="static"> static</label>
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
