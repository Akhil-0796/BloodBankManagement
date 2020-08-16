<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*"%>

<%

	String name=request.getParameter("name");
	String fathername=request.getParameter("fathername");
	String mothername=request.getParameter("mothername");
	String mobilenumber=request.getParameter("mobilenumber");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	String bloodgroup=request.getParameter("bloodgroup");
	String address=request.getParameter("address");

	try{
		Connection con=ConnectionProvider.getCon();
		PreparedStatement ps=con.prepareStatement("insert into donor values(donor_id.nextval,?,?,?,?,?,?,?,?)");
		

		ps.setString(1,name);
		ps.setString(2,fathername);
		ps.setString(3,mothername);
		ps.setString(4,mobilenumber);
		ps.setString(5,gender);
		ps.setString(6,email);
		ps.setString(7,bloodgroup);
		ps.setString(8,address);
		ps.executeUpdate();
		response.sendRedirect("addNewDonor.jsp?num=valid");
		
	}catch(Exception e){
		response.sendRedirect("addNewDonor.jsp?msg=invalid");
		
	}
	
	

%>

