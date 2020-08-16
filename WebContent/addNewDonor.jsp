<%@include file="header.html"%>
<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>

<%
	String msg=request.getParameter("msg");
	String num=request.getParameter("num");
	
	if("valid".equals(msg))
	{
%>

<center><font color="green" size="5" >Successfully Added! <%out.println(num); %></font></center>		
	<%}%>
<%

	if("invalid".equals(msg)){
%>

<center><font color="red" size="5" >Something went wrong try later !!</font></center>		
	<%	
	}
%>
	
	
	
	<div class="container">
	<form action="addNewDonorAction.jsp" metho="post">
	<h2>Name</h2>
	<input type="text" placeholder="Enter Your Name" name="name">
	<hr>
	<h2>Father Name</h2>
	<input type="text" placeholder="Enter Your Father-Name" name="fathername">
	<hr>
	<h2>Mother-Name</h2>
	<input type="text" placeholder="Enter Your Mother-Name" name="mothername">
	<hr>
	<h2>Mobile</h2>
	<input type="text" placeholder="Enter Your MobileNumber" name="mobilenumber">
	<hr>
	<h2>Gender</h2>
	<select name="gender">
	<option value="male">male</option>
	<option value="female">female</option>
	<option value="others">others</option>
	</select>
	<hr>
	<h2>Email</h2>
	<input type="email" placeholder="Enter Your email-id" name="email">
	<hr>
	<h2>Blood Group</h2>
	<select name="bloodgroup">
	<option value="A+">A+</option>
	<option value="B+">B+</option>
	<option value="A-">A-</option>
	<option value="B-">B-</option>
	<option value="O-">O-</option>
	<option value="O+">O+</option>
	<option value="AB-">AB-</option>
	<option value="AB+">AB+</option>
	</select>
	<hr>
	<h2>Address</h2>
	<input type="text" placeholder="Enter Your Address" name="address">
	<br>
	<center><button type="submit" class="button">Save</button></center>
	</form>
	</div>
	</div>

<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ MCA Days :: 2020  </center></h3>

</body>
</html>