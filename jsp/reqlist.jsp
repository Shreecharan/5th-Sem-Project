<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Request List</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select Username,Bloodgrp,Email,Contact,Locality from requests"); 
%>
<h1>Requests</h1>
<% 

while(rs.next()) 
{ 	 String user = rs.getString("Username");
     String bldg = rs.getString("Bloodgrp");
     String email = rs.getString("Email");
     String contact = rs.getString("Contact");
     String loc = rs.getString("Locality");
     
%>

<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 600px;;margin-left: 300px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
      
       <label>Username	: </label><% out.println(user);%>
              <br/>
               <label>Blood Group	: </label><% out.println(bldg);%>
              <br/>
               <label>Email	: </label><% out.println(email);%>
              <br/> 
              <label>Contact	: </label><% out.println(contact);%>
              <br/>
       <label> Locality : 	</label><% out.println(loc);%>
           <br/>
         
             </div>
           </div><%
 }
%>
</body>
</html>