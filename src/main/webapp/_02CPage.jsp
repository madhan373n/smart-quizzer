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
<title>C Quiz - Smart Quizzer</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f4f4f4;
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
        <a href="_01JavaHome.jsp">Java</a>
        <a href="#">C</a>
        <a href="_03CppHome.jsp">C++</a>
        <a href="_04PythonHome.jsp">Python</a>
        <a href="_05AptitudeHome.jsp">Aptitude</a>
</div>
<form action="_02C_Result.jsp" method="post">
<h1>C Programming Quiz</h1>
<div class="quiz-container">

<div class="quiz-container">
  <div class="question-box">
    <div class="question">1. Which of the following is a valid C variable name?</div>
    <div class="options">
      <label><input type="radio" name="q1" value="int"> int</label>
      <label><input type="radio" name="q1" value="1int"> 1int</label>
      <label><input type="radio" name="q1" value="int_one"> int_one</label>
      <label><input type="radio" name="q1" value="#int"> #int</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">2. What is the output of: <code>printf("%d", 10 + 5 * 2);</code>?</div>
    <div class="options">
      <label><input type="radio" name="q2" value="20"> 20</label>
      <label><input type="radio" name="q2" value="25"> 25</label>
      <label><input type="radio" name="q2" value="30"> 30</label>
      <label><input type="radio" name="q2" value="40"> 40</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">3. Which of the following is used to read a string in C?</div>
    <div class="options">
      <label><input type="radio" name="q3" value="scanf"> scanf</label>
      <label><input type="radio" name="q3" value="gets"> gets</label>
      <label><input type="radio" name="q3" value="puts"> puts</label>
      <label><input type="radio" name="q3" value="read"> read</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">4. Which symbol is used to denote a preprocessor directive?</div>
    <div class="options">
      <label><input type="radio" name="q4" value="@"> @</label>
      <label><input type="radio" name="q4" value="#"> #</label>
      <label><input type="radio" name="q4" value="&"> &</label>
      <label><input type="radio" name="q4" value="%"> %</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">5. Which header file is required for printf() function?</div>
    <div class="options">
      <label><input type="radio" name="q5" value="stdlib.h"> stdlib.h</label>
      <label><input type="radio" name="q5" value="conio.h"> conio.h</label>
      <label><input type="radio" name="q5" value="stdio.h"> stdio.h</label>
      <label><input type="radio" name="q5" value="string.h"> string.h</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">6. What is the size of an int on a 32-bit system?</div>
    <div class="options">
      <label><input type="radio" name="q6" value="2 bytes"> 2 bytes</label>
      <label><input type="radio" name="q6" value="4 bytes"> 4 bytes</label>
      <label><input type="radio" name="q6" value="8 bytes"> 8 bytes</label>
      <label><input type="radio" name="q6" value="1 byte"> 1 byte</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">7. What does the function strlen() return?</div>
    <div class="options">
      <label><input type="radio" name="q7" value="Number of characters including '\\0'"> Number of characters including '\0'</label>
      <label><input type="radio" name="q7" value="Number of characters excluding '\\0'"> Number of characters excluding '\0'</label>
      <label><input type="radio" name="q7" value="Only '\\0'"> Only '\0'</label>
      <label><input type="radio" name="q7" value="Nothing"> Nothing</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">8. What is the correct format specifier for float in printf()?</div>
    <div class="options">
      <label><input type="radio" name="q8" value="%d"> %d</label>
      <label><input type="radio" name="q8" value="%f"> %f</label>
      <label><input type="radio" name="q8" value="%c"> %c</label>
      <label><input type="radio" name="q8" value="%s"> %s</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">9. Which loop is guaranteed to execute at least once?</div>
    <div class="options">
      <label><input type="radio" name="q9" value="for loop"> for loop</label>
      <label><input type="radio" name="q9" value="while loop"> while loop</label>
      <label><input type="radio" name="q9" value="do-while loop"> do-while loop</label>
      <label><input type="radio" name="q9" value="if statement"> if statement</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">10. Which operator is used to get the address of a variable?</div>
    <div class="options">
      <label><input type="radio" name="q10" value="*"> *</label>
      <label><input type="radio" name="q10" value="&"> &</label>
      <label><input type="radio" name="q10" value="%"> %</label>
      <label><input type="radio" name="q10" value="#"> #</label>
    </div>
  </div>

 <div class="question-box">
    <div class="question">11. Which keyword is used to define a constant in C?</div>
    <div class="options">
      <label><input type="radio" name="q11" value="constant"> constant</label>
      <label><input type="radio" name="q11" value="final"> final</label>
      <label><input type="radio" name="q11" value="const"> const</label>
      <label><input type="radio" name="q11" value="define"> define</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">12. What is the default return type of main() if not specified?</div>
    <div class="options">
      <label><input type="radio" name="q12" value="int"> int</label>
      <label><input type="radio" name="q12" value="void"> void</label>
      <label><input type="radio" name="q12" value="float"> float</label>
      <label><input type="radio" name="q12" value="char"> char</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">13. Which format specifier is used to print characters?</div>
    <div class="options">
      <label><input type="radio" name="q13" value="%d"> %d</label>
      <label><input type="radio" name="q13" value="%c"> %c</label>
      <label><input type="radio" name="q13" value="%s"> %s</label>
      <label><input type="radio" name="q13" value="%f"> %f</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">14. Which header file is required for strlen()?</div>
    <div class="options">
      <label><input type="radio" name="q14" value="stdio.h"> stdio.h</label>
      <label><input type="radio" name="q14" value="string.h"> string.h</label>
      <label><input type="radio" name="q14" value="math.h"> math.h</label>
      <label><input type="radio" name="q14" value="conio.h"> conio.h</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">15. Which function is used to dynamically allocate memory in C?</div>
    <div class="options">
      <label><input type="radio" name="q15" value="malloc()"> malloc()</label>
      <label><input type="radio" name="q15" value="calloc()"> calloc()</label>
      <label><input type="radio" name="q15" value="realloc()"> realloc()</label>
      <label><input type="radio" name="q15" value="All of the above"> All of the above</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">16. What is the output of <code>sizeof(char)</code>?</div>
    <div class="options">
      <label><input type="radio" name="q16" value="1"> 1</label>
      <label><input type="radio" name="q16" value="2"> 2</label>
      <label><input type="radio" name="q16" value="4"> 4</label>
      <label><input type="radio" name="q16" value="8"> 8</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">17. Which of the following is a logical operator in C?</div>
    <div class="options">
      <label><input type="radio" name="q17" value="&"> &</label>
      <label><input type="radio" name="q17" value="|"> |</label>
      <label><input type="radio" name="q17" value="&&"> &&</label>
      <label><input type="radio" name="q17" value="<>"> <></label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">18. What is the correct way to declare a pointer in C?</div>
    <div class="options">
      <label><input type="radio" name="q18" value="int *ptr;"> int *ptr;</label>
      <label><input type="radio" name="q18" value="int ptr*;"> int ptr*;</label>
      <label><input type="radio" name="q18" value="int &ptr;"> int &ptr;</label>
      <label><input type="radio" name="q18" value="ptr int*;"> ptr int*;</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">19. Which of the following can be used to comment a single line in C?</div>
    <div class="options">
      <label><input type="radio" name="q19" value="//"> //</label>
      <label><input type="radio" name="q19" value="/* */"> /* */</label>
      <label><input type="radio" name="q19" value="-->"> --></label>
      <label><input type="radio" name="q19" value="##"> ##</label>
    </div>
  </div>

  <div class="question-box">
    <div class="question">20. What is the result of 10 % 3 in C?</div>
    <div class="options">
      <label><input type="radio" name="q20" value="1"> 1</label>
      <label><input type="radio" name="q20" value="0"> 0</label>
      <label><input type="radio" name="q20" value="3"> 3</label>
      <label><input type="radio" name="q20" value="10"> 10</label>
    </div>
  </div>


  <button class="submit-btn">Submit Quiz</button>
</form>
</div>

<script>
function toggleMenu() {
  const sidebar = document.getElementById("sidebar");
  sidebar.style.left = (sidebar.style.left === "0px") ? "-260px" : "0px";
}
</script>

</body>
</html>