<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Addbbank.jsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String ID=request.getParameter("BB_ID"); 
String name=request.getParameter("BB_NAME"); 
String address=request.getParameter("BB_ADDRESS");
String contact=request.getParameter("BB_CONTACT");
String timings=request.getParameter("BB_TIMINGS"); 

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test?noAccessToProcedureBodies=true"); 
Statement st= con.createStatement(); 
ResultSet rs; 
CallableStatement call=con.prepareCall("{call noofbbank(?,?,?,?,?)}");
call.setString(1, ID);
call.setString(2, name);
call.setString(3, address);
call.setString(4, contact);
call.setString(5, timings);
call.execute();
response.sendRedirect("bbanklist.jsp");



%>


</body>
</html>