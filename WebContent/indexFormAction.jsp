<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>


<%

String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobile");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("blood");
String status="pending";

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?)");
	ps.setString(1,name.toUpperCase());
	ps.setString(2,mobilenumber.toUpperCase());
	ps.setString(3,email.toUpperCase());
	ps.setString(4,bloodgroup.toUpperCase());
	ps.setString(5,status.toUpperCase());
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
	
	
}catch(Exception e){
	response.sendRedirect("index.jsp?msg=invalid");
}
%>