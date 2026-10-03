<%
String courseId = request.getParameter("courseId");

if (courseId == null) {
    response.sendRedirect("course.jsp");
    return;
}

String courseName = "";

if ("1".equals(courseId)) {
    courseName = "Java";
} else if ("2".equals(courseId)) {
    courseName = "Python";
} else if ("3".equals(courseId)) {
    courseName = "Web Development";
} else {
    response.sendRedirect("course.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LearnPlay - <%= courseName %> Quiz</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="box quiz-box">

<h1><%= courseName %> Quiz</h1>
<p>Answer all the questions.</p>

<form action="result.jsp" method="post">

<input type="hidden" name="courseId" value="<%= courseId %>">
<input type="hidden" name="courseName" value="<%= courseName %>">

<%
if ("1".equals(courseId)) {
%>

<div class="question">
<h3>1. Which keyword is used to create a class in Java?</h3>
<label><input type="radio" name="q1" value="class" required> class</label>
<label><input type="radio" name="q1" value="Class"> Class</label>
<label><input type="radio" name="q1" value="new"> new</label>
<label><input type="radio" name="q1" value="create"> create</label>
</div>

<div class="question">
<h3>2. Which method is the starting point of a Java program?</h3>
<label><input type="radio" name="q2" value="start()" required> start()</label>
<label><input type="radio" name="q2" value="main()"> main()</label>
<label><input type="radio" name="q2" value="run()"> run()</label>
<label><input type="radio" name="q2" value="begin()"> begin()</label>
</div>

<div class="question">
<h3>3. Which symbol is used to end a statement in Java?</h3>
<label><input type="radio" name="q3" value="." required> .</label>
<label><input type="radio" name="q3" value=";"> ;</label>
<label><input type="radio" name="q3" value=","> ,</label>
<label><input type="radio" name="q3" value=":"> :</label>
</div>

<div class="question">
<h3>4. Which keyword is used for inheritance in Java?</h3>
<label><input type="radio" name="q4" value="this" required> this</label>
<label><input type="radio" name="q4" value="extends"> extends</label>
<label><input type="radio" name="q4" value="super"> super</label>
<label><input type="radio" name="q4" value="inherit"> inherit</label>
</div>

<div class="question">
<h3>5. Which of the following is a Java data type?</h3>
<label><input type="radio" name="q5" value="int" required> int</label>
<label><input type="radio" name="q5" value="number"> number</label>
<label><input type="radio" name="q5" value="decimal"> decimal</label>
<label><input type="radio" name="q5" value="value"> value</label>
</div>

<%
} else if ("2".equals(courseId)) {
%>

<div class="question">
<h3>1. Which keyword is used to define a function in Python?</h3>
<label><input type="radio" name="q1" value="function" required> function</label>
<label><input type="radio" name="q1" value="def"> def</label>
<label><input type="radio" name="q1" value="fun"> fun</label>
<label><input type="radio" name="q1" value="define"> define</label>
</div>

<div class="question">
<h3>2. Which symbol is used for comments in Python?</h3>
<label><input type="radio" name="q2" value="//" required> //</label>
<label><input type="radio" name="q2" value="/* */"> /* */</label>
<label><input type="radio" name="q2" value="#"> #</label>
<label><input type="radio" name="q2" value="<!-- -->"> &lt;!-- --&gt;</label>
</div>

<div class="question">
<h3>3. Which of the following is a Python data type?</h3>
<label><input type="radio" name="q3" value="int" required> int</label>
<label><input type="radio" name="q3" value="number"> number</label>
<label><input type="radio" name="q3" value="character"> character</label>
<label><input type="radio" name="q3" value="decimal"> decimal</label>
</div>

<div class="question">
<h3>4. Which function is used to display output in Python?</h3>
<label><input type="radio" name="q4" value="display()" required> display()</label>
<label><input type="radio" name="q4" value="echo()"> echo()</label>
<label><input type="radio" name="q4" value="print()"> print()</label>
<label><input type="radio" name="q4" value="show()"> show()</label>
</div>

<div class="question">
<h3>5. Which keyword is used to create a loop in Python?</h3>
<label><input type="radio" name="q5" value="repeat" required> repeat</label>
<label><input type="radio" name="q5" value="for"> for</label>
<label><input type="radio" name="q5" value="loop"> loop</label>
<label><input type="radio" name="q5" value="iterate"> iterate</label>
</div>

<%
} else if ("3".equals(courseId)) {
%>

<div class="question">
<h3>1. Which language is used to create the structure of a web page?</h3>
<label><input type="radio" name="q1" value="CSS" required> CSS</label>
<label><input type="radio" name="q1" value="HTML"> HTML</label>
<label><input type="radio" name="q1" value="JavaScript"> JavaScript</label>
<label><input type="radio" name="q1" value="Python"> Python</label>
</div>

<div class="question">
<h3>2. Which language is used to style a web page?</h3>
<label><input type="radio" name="q2" value="HTML" required> HTML</label>
<label><input type="radio" name="q2" value="Java"> Java</label>
<label><input type="radio" name="q2" value="CSS"> CSS</label>
<label><input type="radio" name="q2" value="SQL"> SQL</label>
</div>

<div class="question">
<h3>3. Which language is mainly used to add interactivity to web pages?</h3>
<label><input type="radio" name="q3" value="HTML" required> HTML</label>
<label><input type="radio" name="q3" value="CSS"> CSS</label>
<label><input type="radio" name="q3" value="JavaScript"> JavaScript</label>
<label><input type="radio" name="q3" value="SQL"> SQL</label>
</div>

<div class="question">
<h3>4. Which HTML tag is used to create a hyperlink?</h3>
<label><input type="radio" name="q4" value="<link>" required> &lt;link&gt;</label>
<label><input type="radio" name="q4" value="<a>"> &lt;a&gt;</label>
<label><input type="radio" name="q4" value="<href>"> &lt;href&gt;</label>
<label><input type="radio" name="q4" value="<url>"> &lt;url&gt;</label>
</div>

<div class="question">
<h3>5. Which HTML tag is used to display an image?</h3>
<label><input type="radio" name="q5" value="<image>" required> &lt;image&gt;</label>
<label><input type="radio" name="q5" value="<pic>"> &lt;pic&gt;</label>
<label><input type="radio" name="q5" value="<img>"> &lt;img&gt;</label>
<label><input type="radio" name="q5" value="<src>"> &lt;src&gt;</label>
</div>

<%
}
%>

<button type="submit">Finish Quiz</button>

</form>

</div>

</body>
</html>