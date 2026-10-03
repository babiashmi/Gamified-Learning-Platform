<%
String courseId = request.getParameter("courseId");
String courseName = request.getParameter("courseName");

String q1 = request.getParameter("q1");
String q2 = request.getParameter("q2");
String q3 = request.getParameter("q3");
String q4 = request.getParameter("q4");
String q5 = request.getParameter("q5");

int score = 0;

if ("1".equals(courseId)) {

    if ("class".equals(q1)) score++;
    if ("main()".equals(q2)) score++;
    if (";".equals(q3)) score++;
    if ("extends".equals(q4)) score++;
    if ("int".equals(q5)) score++;

} else if ("2".equals(courseId)) {

    if ("def".equals(q1)) score++;
    if ("#".equals(q2)) score++;
    if ("int".equals(q3)) score++;
    if ("print()".equals(q4)) score++;
    if ("for".equals(q5)) score++;

} else if ("3".equals(courseId)) {

    if ("HTML".equals(q1)) score++;
    if ("CSS".equals(q2)) score++;
    if ("JavaScript".equals(q3)) score++;
    if ("<a>".equals(q4)) score++;
    if ("<img>".equals(q5)) score++;
}

int total = 5;
int percentage = score * 100 / total;

String userEmail = (String) session.getAttribute("userEmail");

String dbMessage = "";

try {

    java.sql.Connection con =
        com.learnplay.DBConnection.getConnection();

    String sql =
        "INSERT INTO quiz_results " +
        "(user_email, course_name, score, total_questions, percentage) " +
        "VALUES (?, ?, ?, ?, ?)";

    java.sql.PreparedStatement ps =
        con.prepareStatement(sql);

    ps.setString(1, userEmail);
    ps.setString(2, courseName);
    ps.setInt(3, score);
    ps.setInt(4, total);
    ps.setInt(5, percentage);

    ps.executeUpdate();

    ps.close();
    con.close();

    dbMessage = "Result saved successfully!";

} catch (Exception e) {

    dbMessage = "Database Error: " + e.getMessage();
}
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>LearnPlay - Result</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

<div class="box result-box">

<h1>Quiz Completed!</h1>

<p><%= courseName %> Quiz Result</p>

<div class="score">
<%= score %> / <%= total %>
</div>

<h2>Score: <%= percentage %>%</h2>

<p class="correct"><%= dbMessage %></p>

<%
if (score == 5) {
%>

<p class="correct">Excellent! Perfect Score!</p>

<%
} else if (score >= 3) {
%>

<p class="correct">Good Job! Keep Learning!</p>

<%
} else {
%>

<p>Keep Practicing!</p>

<%
}
%>

<form action="answers.jsp" method="post">

<input type="hidden" name="courseId" value="<%= courseId %>">
<input type="hidden" name="courseName" value="<%= courseName %>">

<input type="hidden" name="q1" value="<%= q1 %>">
<input type="hidden" name="q2" value="<%= q2 %>">
<input type="hidden" name="q3" value="<%= q3 %>">
<input type="hidden" name="q4" value="<%= q4 %>">
<input type="hidden" name="q5" value="<%= q5 %>">

<button type="submit">View Answers</button>

</form>

<br>

<a href="course.jsp">Back to Courses</a>

</div>

</body>
</html>