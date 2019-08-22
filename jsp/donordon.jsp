<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Donardonation.jsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%
String user=request.getParameter("Username"); 

String unit=request.getParameter("Units"); 
String bgroup=request.getParameter("Blood group");
String date=request.getParameter("Date"); 
String loc=request.getParameter("Locality");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs; 
st.executeQuery("insert into donations values ('"+(String)session.getValue("UserId")+"','"+bgroup+"','"+unit+"','"+loc+"','"+date+"')"); 

response.sendRedirect("donations.jsp");

%>


</body>
</html>