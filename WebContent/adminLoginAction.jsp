<%@page import="javax.servlet.*" %>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");

if("admin".equals(username) && "admin".equals(password)){
	HttpSession session1=request.getSession();
	session1.setAttribute("username",username);
	
	response.sendRedirect("home.jsp");
}else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}



%>