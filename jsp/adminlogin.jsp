<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin loginjsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("Admin-Id/Name");  
String pwd=request.getParameter("Password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from admin where Username='"+userid+"'"); 


if(rs.next()) 
{ 

if(rs.getString(2).equals(pwd)) 
{ 
	
	response.sendRedirect("../weladmin.html");

	 

} 
else 
{ 
out.println("Invalid password try again"); 
} 
 

}  
%>


</body>
</html>