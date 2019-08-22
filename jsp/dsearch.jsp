<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donar Search</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	String bgroup=request.getParameter("Blood Group"); 
	String loc=request.getParameter("Locality");  
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select Username,Bloodgrp,address,email from donars where Bloodgrp='"+bgroup+"' and address='"+loc+"'"); 
%>
<% 
while(rs.next()) 
{ 
	 String name = rs.getString("Username");
     String bldg = rs.getString("Bloodgrp");
     String add = rs.getString("address");
     String email = rs.getString("email");
     
%>
<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
       <label>Name	:	 </label><%out.println(name);%>
               <br/>
		 <label>Blood Group	: </label><% out.println(bldg);%>
              <br/>
       <label>Address	: 	</label><% out.println(add);%>
           <br/>
          <label>Email	: 	</label><%out.println(email);%>
          <br>
             </div>
           </div><%
 }
%>
<a href="../donarsearch.html">Home</a>
</body>
</html>