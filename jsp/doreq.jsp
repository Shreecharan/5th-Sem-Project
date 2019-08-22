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
ResultSet rs1=st.executeQuery("select Bloodgrp from donars where Username='"+(String)session.getValue("UserId")+"'");
rs1.next();
String bloodgrp = rs1.getString("Bloodgrp");
Statement st2= con.createStatement(); 
ResultSet rs2=st2.executeQuery("select Username,Bloodgrp,Email,Contact,Locality from requests where Bloodgrp='"+bloodgrp+"'"); 
%>
<h1>Requests</h1>
<% 

while(rs2.next()) 
{ 	 String user=rs2.getString("Username");
     String bldg = rs2.getString("Bloodgrp");
     String email = rs2.getString("Email");
     String contact = rs2.getString("Contact");
     String loc = rs2.getString("Locality");
     
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