<%@page import = "project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "adminHeader.jsp" %>
<%@include file = "../footer.jsp"%>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<%
	try{
	String id = request.getParameter("id");
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from product where id = '"+id+"'");
	while(rs.next()){
%>
<form action="editProductAction.jsp" method="post">
<input type="hidden" name = "id" value="<%out.print(id);%>">
<div class="left-div">
 <h3>Enter Name</h3>
 <!-- 1st column for id -->
 <!-- it's getString(2) only for 2nd column which is name -->
<input type="text" class="input-style" name="name" value="<%=rs.getString(2)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
  <!-- it's getString(3) only for 3rd column which is category -->
<input type="text" class="input-style" name="category" value="<%=rs.getString(3)%>" required>
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
  <!-- it's getString(4) only for 4th column which is price -->
<input type="text" class="input-style" name="price" value="<%=rs.getString(4)%>" required>
<hr>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
	<option value="Yes">Yes</option>
	<option value = "No">No</option>
</select>
 <hr>
</div>
	<button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button> 
</form>
<%}
}
	catch(Exception e){
		System.out.print(e);
	}
%>

</body>
<br><br><br>
</body>
</html>