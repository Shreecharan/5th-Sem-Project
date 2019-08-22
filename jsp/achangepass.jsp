<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> AdminChangePassword.jsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
//session.putValue("userid",userid); 
String userid=request.getParameter("Admin-Id/Name"); 
String pwd=request.getParameter("current password"); 
String npwd=request.getParameter("New password"); 

Class.forName("com.mysql.cj.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from admin where Username='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
	st.executeUpdate("update admin set pwd='"+npwd+"' where Username='"+userid+"'");
	response.sendRedirect("../weladmin.html");
	out.println("Password Changed Successfully"); 
} 
else 
{ 
out.println("Invalid password try again"); 
} 
} 

%>

</body>
</html>