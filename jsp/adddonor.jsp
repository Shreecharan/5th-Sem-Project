<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add donar.jsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String user=request.getParameter("Username"); 
String pwd=request.getParameter("password"); 
String contact=request.getParameter("Contact");
String bgroup=request.getParameter("Blood group");
String email=request.getParameter("Email"); 
String Address=request.getParameter("Address");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into donars values ('"+user+"','"+pwd+"','"+email+"','"+bgroup+"','"+contact+"','"+Address+"')"); 

response.sendRedirect("Donarlist.jsp");



%>


</body>
</html>