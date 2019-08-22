<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String user=request.getParameter("Username"); 
String pwd=request.getParameter("CreatePassword"); 
String copwd=request.getParameter("ConfirmPassword"); 
String email=request.getParameter("Email-Id"); 
String bgroup=request.getParameter("BloodGroup");
session.setAttribute("Bgrp",bgroup); 
String contact=request.getParameter("ContactNumber");
String Address=request.getParameter("Address");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into donars values ('"+user+"','"+pwd+"','"+email+"','"+bgroup+"','"+contact+"','"+Address+"')"); 

out.println("Registered"); 
response.sendRedirect("../logtest.html");


%>
<a href ="../logtest.html">Login</a><br/><br/>

</body>
</html>