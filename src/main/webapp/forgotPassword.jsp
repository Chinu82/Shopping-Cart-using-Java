<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="forgotPasswordAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter Your Email-Id" required>
      <input type="number" name="mobileNumber" placeholder="Enter Your Mobile Number">
      <select name="securityQuestion">
        <option value="What is Favorite item ?">What is Favorite item ?</option>
        <option value="What is your birthplace ?">What is your birthplace ?</option>
        <option value="What is Your First Primary School ?">What is Your First Primary School ?</option>
        <option value="What was Your First Car ?">What was Your First Car ?</option>
      </select>
      <input type="text" name="answer" placeholder="Enter Your Answer" required>
      <input type="password" name="password" placeholder="Enter Password to Set" required>
      <input type="submit" name="Save">
    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>

<%
	String msg = request.getParameter("msg");
	if("done".equals(msg))
	{%>  
		<h1>Password Changed Successfully!</h1>
	<%} %>
	<%	if("invalid".equals(msg))
	{%>  
		<h1>Some thing Went Wrong! Try Again !</h1>
	<%} %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>