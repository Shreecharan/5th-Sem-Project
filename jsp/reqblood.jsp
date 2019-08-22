<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request Blood</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String user=request.getParameter("Username"); 
//  session.putValue("Username",user); 
String bgroup=request.getParameter("Blood Group");
String contact=request.getParameter("Contact");
String email=request.getParameter("Email"); 
String Address=request.getParameter("Locality");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into requests values ('"+user+"', '"+bgroup+"','"+email+"','"+contact+"','"+Address+"')"); 

response.sendRedirect("../RequestBlood.html");


%>
<a href ="../logtest.html">Login</a><br/><br/>

</body>
</html>