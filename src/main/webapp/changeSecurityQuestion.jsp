<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "changeDetailsHeader.jsp" %>
<%@include file = "footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>

<%
String msg = request.getParameter("msg");
if("done".equals(msg)){
%>
	<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg)){ %>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method=post>
<h3>Select Your New Security Question</h3>
<select name="securityQuestion" class="input-style">
      <option value="What is Favorite item ?">What is Favorite item ?</option>
      <option value="What is your birthplace ?">What is your birthplace ?</option>
      <option value="What is Your First Primary School ?">What is Your First Primary School ?</option>
      <option value="What was Your First Car ?">What was Your First Car ?</option>
    </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input type="text" class="input-style" name="newAnswer" placeholder="Enter your new answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
 <input type="password" class="input-style" name="password" placeholder="Enter your Password" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>

</form>
</body>
<br><br><br>
</html>