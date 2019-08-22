<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blooddetails.jsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
	
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select  distinct Bloodgrp,count(Bloodgrp) from donars group by(Bloodgrp)"); 
%>
<h1>Blood Details</h1>
<% 

while(rs.next()) 
{ 
     String bldg = rs.getString("Bloodgrp");
     String add = rs.getString("count(Bloodgrp)");
     
%>

<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 600px;;margin-left: 300px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
      
		 <label>Blood Group	: </label><% out.println(bldg);%>
              <br/>
       <label>Number of units: 	</label><% out.println(add);%>
           <br/>
         
             </div>
           </div><%
 }
%>
</body>
</html>