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
<title>Java Quiz - Smart Quizzer</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f4f4f4;
}

/* Sidebar */
.menu-btn {
  position: absolute;
  left: 20px;
  top: 20px;
  font-size: 26px;
  background: none;
  color: #ffd700;
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
  background-color: #1d3557;
  color: white;
  padding-top: 60px;
  transition: 0.3s;
  z-index: 1000;
}

.sidebar a {
  padding: 14px 24px;
  text-decoration: none;
  color: #ffd700;
  display: block;
  transition: 0.3s;
  font-weight: bold;
}

.sidebar a:hover {
  background-color: #0f2542;
}

/* Header */
h1 {
  text-align: center;
  background-color: #1d3557;
  color: #ffd700;
  padding: 20px 0;
  margin: 0;
}

.quiz-container {
  max-width: 850px;
  margin: 30px auto;
  padding: 20px;
}

.question-box {
  background-color: #ffffff;
  color: #0d1117;
  border-radius: 12px;
  padding: 20px;
  margin-bottom: 20px;
  border-left: 6px solid #1d3557;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.question {
  font-size: 18px;
  font-weight: bold;
}

.options {
  margin-top: 12px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.options label {
  background-color: #f6f8fa;
  padding: 10px 14px;
  border-radius: 8px;
  cursor: pointer;
  border: 1px solid #ccd6f6;
  transition: background-color 0.2s;
}

.options label:hover {
  background-color: #eaeefc;
}

input[type="radio"] {
  margin-right: 10px;
}

.submit-btn {
  display: block;
  width: 220px;
  margin: 30px auto;
  padding: 14px 24px;
  font-size: 17px;
  color: #1d3557;
  background-color: #122143;
  border: none;
  border-radius: 10px;
  cursor: pointer;
  font-weight: bold;
  transition: background-color 0.3s ease;
}

.submit-btn:hover {
  background-color: #bc9720;
}
</style>
</head>
<body>

<button class="menu-btn" onclick="toggleMenu()">≡</button>

<div class="sidebar" id="sidebar">
   <a href="MyProfile.jsp">My Profile</a>
  <a href="#">Java</a>
  <a href="_02CHome.jsp">C</a>
  <a href="_03CppHome.jsp">C++</a>
  <a href="_04PythonHome.jsp">Python</a>
  <a href="_05AptitudeHome.jsp">Aptitude</a>
</div>
<form action="_01Java_Result.jsp" method="post">
<h1>Java Quiz</h1>
<div class="quiz-container">
  <div class="question-box">
    <div class="question">1. What is the size of int in Java?</div>
    <div class="options">
      <label><input type="radio" name="q1"> 4 bytes</label>
      <label><input type="radio" name="q1"> 2 bytes</label>
      <label><input type="radio" name="q1"> 8 bytes</label>
      <label><input type="radio" name="q1"> Depends on system</label>
    </div>
  </div>
  <div class="question-box">
<p class="question">2. Which keyword is used to inherit a class?</p>
<div class="options">
<label><input type="radio" name="q2" value="a"> a) implement</label>
<label><input type="radio" name="q2" value="b"> b) inherit</label>
<label><input type="radio" name="q2" value="c"> c) extends</label>
</div>
</div>

<div class="question-box">
<p class="question">3. Which method is the entry point for any Java program?</p>
<div class="options">
<label><input type="radio" name="q3" value="a"> a) start()</label>
<label><input type="radio" name="q3" value="b"> b) run()</label>
<label><input type="radio" name="q3" value="c"> c) main()</label>
</div>
</div>

<div class="question-box">
<p class="question">4. What is JVM?</p>
<div class="options">
<label><input type="radio" name="q4" value="a"> a) Java Very Machine</label>
<label><input type="radio" name="q4" value="b"> b) Java Virtual Machine</label>
<label><input type="radio" name="q4" value="c"> c) Java Variable Machine</label>
</div>
</div>

<div class="question-box">
<p class="question">5. Which of these is not a Java keyword?</p>
<div class="options">
<label><input type="radio" name="q5" value="a"> a) static</label>
<label><input type="radio" name="q5" value="b"> b) Integer</label>
<label><input type="radio" name="q5" value="c"> c) try</label>
</div>
</div>

<div class="question-box">
<p class="question">6. What is the default value of a boolean variable?</p>
<div class="options">
<label><input type="radio" name="q6" value="a"> a) true</label>
<label><input type="radio" name="q6" value="b"> b) false</label>
<label><input type="radio" name="q6" value="c"> c) 0</label>
</div>
</div>

<div class="question-box">
<p class="question">7. Which symbol is used to terminate a statement in Java?</p>
<div class="options">
<label><input type="radio" name="q7" value="a"> a) .</label>
<label><input type="radio" name="q7" value="b"> b) ;</label>
<label><input type="radio" name="q7" value="c"> c) :</label>
</div>
</div>

<!-- Moderate Questions -->
<div class="question-box">
<p class="question">8. Which class is the superclass of all classes in Java?</p>
<div class="options">
<label><input type="radio" name="q8" value="a"> a) Object</label>
<label><input type="radio" name="q8" value="b"> b) Class</label>
<label><input type="radio" name="q8" value="c"> c) Main</label>
</div>
</div>

<div class="question-box">
<p class="question">9. What does the 'final' keyword mean in Java?</p>
<div class="options">
<label><input type="radio" name="q9" value="a"> a) Variable can’t be changed</label>
<label><input type="radio" name="q9" value="b"> b) Method can be inherited</label>
<label><input type="radio" name="q9" value="c"> c) Class can be instantiated</label>
</div>
</div>

<div class="question-box">
<p class="question">10. What is the output of: System.out.println(10 + 20 + \"Java\")?</p>
<div class="options">
<label><input type="radio" name="q10" value="a"> a) 30Java</label>
<label><input type="radio" name="q10" value="b"> b) Java1020</label>
<label><input type="radio" name="q10" value="c"> c) 1020Java</label>
</div>
</div>

<div class="question-box">
<p class="question">11. Which exception is thrown when a file is not found?</p>
<div class="options">
<label><input type="radio" name="q11" value="a"> a) IOException</label>
<label><input type="radio" name="q11" value="b"> b) FileNotFoundException</label>
<label><input type="radio" name="q11" value="c"> c) Exception</label>
</div>
</div>

<div class="question-box">
<p class="question">12. What is the result of 5 / 2 in Java?</p>
<div class="options">
<label><input type="radio" name="q12" value="a"> a) 2.5</label>
<label><input type="radio" name="q12" value="b"> b) 2</label>
<label><input type="radio" name="q12" value="c"> c) 3</label>
</div>
</div>

<div class="question-box">
<p class="question">13. Which keyword is used to prevent overriding?</p>
<div class="options">
<label><input type="radio" name="q13" value="a"> a) static</label>
<label><input type="radio" name="q13" value="b"> b) abstract</label>
<label><input type="radio" name="q13" value="c"> c) final</label>
</div>
</div>

<div class="question-box">
<p class="question">14. Which package contains Scanner class?</p>
<div class="options">
<label><input type="radio" name="q14" value="a"> a) java.io</label>
<label><input type="radio" name="q14" value="b"> b) java.util</label>
<label><input type="radio" name="q14" value="c"> c) java.lang</label>
</div>
</div>

<!-- Little Hard Questions -->
<div class="question-box">
<p class="question">15. What is method overloading?</p>
<div class="options">
<label><input type="radio" name="q15" value="a"> a) Same method name, different classes</label>
<label><input type="radio" name="q15" value="b"> b) Same method name, different parameters</label>
<label><input type="radio" name="q15" value="c"> c) Different method names</label>
</div>
</div>

<div class="question-box">
<p class="question">16. Which collection allows duplicate elements?</p>
<div class="options">
<label><input type="radio" name="q16" value="a"> a) Set</label>
<label><input type="radio" name="q16" value="b"> b) Map</label>
<label><input type="radio" name="q16" value="c"> c) List</label>
</div>
</div>

<div class="question-box">
<p class="question">17. What is the purpose of the 'super' keyword?</p>
<div class="options">
<label><input type="radio" name="q17" value="a"> a) Access superclass constructor</label>
<label><input type="radio" name="q17" value="b"> b) Call the final method</label>
<label><input type="radio" name="q17" value="c"> c) Stop inheritance</label>
</div>
</div>

<div class="question-box">
<p class="question">18. Which of the following is not part of OOP in Java?</p>
<div class="options">
<label><input type="radio" name="q18" value="a"> a) Inheritance</label>
<label><input type="radio" name="q18" value="b"> b) Encapsulation</label>
<label><input type="radio" name="q18" value="c"> c) Compilation</label>
</div>
</div>

<div class="question-box">
<p class="question">19. What is the use of 'this' keyword?</p>
<div class="options">
<label><input type="radio" name="q19" value="a"> a) Refer current object</label>
<label><input type="radio" name="q19" value="b"> b) Refer super class</label>
<label><input type="radio" name="q19" value="c"> c) Create new object</label>
</div>
</div>

<div class="question-box">
<p class="question">20. What is the output of: System.out.println(\"Java\" + 10 + 20);</p>
<div class="options">
<label><input type="radio" name="q20" value="a"> a) Java1020</label>
<label><input type="radio" name="q20" value="b"> b) 30Java</label>
<label><input type="radio" name="q20" value="c"> c) Java30</label>
</div>
</div>

  <button class="submit-btn">Submit Quiz</button>
</div>
</form>
<script>
function toggleMenu() {
  const sidebar = document.getElementById("sidebar");
  sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
}
</script>

</body>
</html>
    