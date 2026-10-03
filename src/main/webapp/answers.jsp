<%
String courseId = request.getParameter("courseId");
String courseName = request.getParameter("courseName");

String q1 = request.getParameter("q1");
String q2 = request.getParameter("q2");
String q3 = request.getParameter("q3");
String q4 = request.getParameter("q4");
String q5 = request.getParameter("q5");

String displayQ1 = q1;
String displayQ2 = q2;
String displayQ3 = q3;
String displayQ4 = q4;
String displayQ5 = q5;

if (displayQ1 != null) {
    displayQ1 = displayQ1.replace("<", "&lt;").replace(">", "&gt;");
}

if (displayQ2 != null) {
    displayQ2 = displayQ2.replace("<", "&lt;").replace(">", "&gt;");
}

if (displayQ3 != null) {
    displayQ3 = displayQ3.replace("<", "&lt;").replace(">", "&gt;");
}

if (displayQ4 != null) {
    displayQ4 = displayQ4.replace("<", "&lt;").replace(">", "&gt;");
}

if (displayQ5 != null) {
    displayQ5 = displayQ5.replace("<", "&lt;").replace(">", "&gt;");
}
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>LearnPlay - Answers</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="container">

<h1><%= courseName %> Quiz Answers</h1>
<p>Check your answers below.</p>


<%
if ("1".equals(courseId)) {
%>

<!-- JAVA -->

<div class="answer">
<h3>1. Which keyword is used to create a class in Java?</h3>
<p>Your Answer: <b><%= displayQ1 %></b></p>
<p>Correct Answer: <b class="correct">class</b></p>

<% if ("class".equals(q1)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>2. Which method is the starting point of a Java program?</h3>
<p>Your Answer: <b><%= displayQ2 %></b></p>
<p>Correct Answer: <b class="correct">main()</b></p>

<% if ("main()".equals(q2)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>3. Which symbol is used to end a statement in Java?</h3>
<p>Your Answer: <b><%= displayQ3 %></b></p>
<p>Correct Answer: <b class="correct">;</b></p>

<% if (";".equals(q3)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>4. Which keyword is used for inheritance in Java?</h3>
<p>Your Answer: <b><%= displayQ4 %></b></p>
<p>Correct Answer: <b class="correct">extends</b></p>

<% if ("extends".equals(q4)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>5. Which of the following is a Java data type?</h3>
<p>Your Answer: <b><%= displayQ5 %></b></p>
<p>Correct Answer: <b class="correct">int</b></p>

<% if ("int".equals(q5)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<%
} else if ("2".equals(courseId)) {
%>

<!-- PYTHON -->

<div class="answer">
<h3>1. Which keyword is used to define a function in Python?</h3>
<p>Your Answer: <b><%= displayQ1 %></b></p>
<p>Correct Answer: <b class="correct">def</b></p>

<% if ("def".equals(q1)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>2. Which symbol is used for comments in Python?</h3>
<p>Your Answer: <b><%= displayQ2 %></b></p>
<p>Correct Answer: <b class="correct">#</b></p>

<% if ("#".equals(q2)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>3. Which of the following is a Python data type?</h3>
<p>Your Answer: <b><%= displayQ3 %></b></p>
<p>Correct Answer: <b class="correct">int</b></p>

<% if ("int".equals(q3)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>4. Which function is used to display output in Python?</h3>
<p>Your Answer: <b><%= displayQ4 %></b></p>
<p>Correct Answer: <b class="correct">print()</b></p>

<% if ("print()".equals(q4)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>5. Which keyword is used to create a loop in Python?</h3>
<p>Your Answer: <b><%= displayQ5 %></b></p>
<p>Correct Answer: <b class="correct">for</b></p>

<% if ("for".equals(q5)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<%
} else if ("3".equals(courseId)) {
%>

<!-- WEB DEVELOPMENT -->

<div class="answer">
<h3>1. Which language is used to create the structure of a web page?</h3>
<p>Your Answer: <b><%= displayQ1 %></b></p>
<p>Correct Answer: <b class="correct">HTML</b></p>

<% if ("HTML".equals(q1)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>2. Which language is used to style a web page?</h3>
<p>Your Answer: <b><%= displayQ2 %></b></p>
<p>Correct Answer: <b class="correct">CSS</b></p>

<% if ("CSS".equals(q2)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>3. Which language is mainly used to add interactivity to web pages?</h3>
<p>Your Answer: <b><%= displayQ3 %></b></p>
<p>Correct Answer: <b class="correct">JavaScript</b></p>

<% if ("JavaScript".equals(q3)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>4. Which HTML tag is used to create a hyperlink?</h3>
<p>Your Answer: <b><%= displayQ4 %></b></p>
<p>Correct Answer: <b class="correct">&lt;a&gt;</b></p>

<% if ("<a>".equals(q4)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<div class="answer">
<h3>5. Which HTML tag is used to display an image?</h3>
<p>Your Answer: <b><%= displayQ5 %></b></p>
<p>Correct Answer: <b class="correct">&lt;img&gt;</b></p>

<% if ("<img>".equals(q5)) { %>
<p class="correct">Correct!</p>
<% } else { %>
<p class="error">Wrong Answer</p>
<% } %>
</div>


<%
}
%>

<br>

<a href="course.jsp">Back to Courses</a>

</div>

</body>
</html>