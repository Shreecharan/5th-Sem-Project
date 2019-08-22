<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Register</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String user=request.getParameter("Username"); 
//  session.putValue("Username",user); 
out.println(user);
String pwd=request.getParameter("Create Password"); 
String copwd=request.getParameter("Confirm Password"); 
String email=request.getParameter("E-mail ID");

String bgroup=request.getParameter("Blood Group");
String contact=request.getParameter("Contact Number");
String Address=request.getParameter("Address");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into patients values ('"+user+"','"+pwd+"','"+bgroup+"','"+contact+"','"+email+"','"+Address+"')"); 

out.println("Registered"); 
response.sendRedirect("../patientlogin.html");

%>


</body>
</html>