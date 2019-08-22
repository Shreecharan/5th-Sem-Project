<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>donations.jsp</title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
		
	<%

Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select Bloodgrp,Units,Locality,Date from donations where Username='"+(String)session.getValue("UserId")+"'"); 
%>
<h1>Your Donations</h1>
<% 

while(rs.next()) 
{ 
     String bldg = rs.getString("Bloodgrp");
     String unit = rs.getString("Units");
     String Loc = rs.getString("Locality");
     String date = rs.getString("Date");
     
%>

<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 600px;;margin-left: 300px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
      
		 <label>Blood Group	: </label><% out.println(bldg);%>
              <br/>
       <label>Number of units: 	</label><% out.println(unit);%>
           <br/>
          <label>Locality: 	</label><% out.println(Loc);%>
           <br/>
            <label>Date: 	</label><% out.println(date);%>
           <br/>
             </div>
           </div><%
 }
%>
<div style="text-align: center;width: 280px;
	position: absolute;margin-left: 400px;">
	
	<form action="donordon.jsp" method="get">
<h1 style="float: right;
	font-size: 40px;
	border-bottom: 6px solid black;
	margin-bottom: 50px;
	padding: 10px;">Add Details</h1>
	
<div style=" width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;"
>

	<i class="fa fa-user" aria-hidden="true"></i>
	<input type="text" placeholder="Units" name="Units" value="" style="border: none;
	outline: none;
	background: none;
	color: black;
	font-size: 18px;
		padding: 8px 0;
	margin: 8px 0;
	width: 80%;
	float: left;
	border-bottom: 1px solid black;
	margin: 0 10px;
	">

	<input type="text" placeholder="Blood group" name="Blood group" value="" style="border: none;
	outline: none;
	background: none;
	color: black;
	font-size: 18px;
		padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;
	width: 80%;
	float: left;
	margin: 0 10px;
	">
		<input type="text" placeholder="Date" name="Date" value="" style="border: none;
	outline: none;
	background: none;
		padding: 8px 0;
	margin: 8px 0;
	color: black;
	font-size: 18px;
	border-bottom: 1px solid black;
	width: 80%;
	float: left;
	margin: 0 10px;
	">
	<input type="text" placeholder="Locality" name="Locality" value="" style="border: none;
	outline: none;
	background: none;
	color: black;
		padding: 8px 0;
	margin: 8px 0;
	font-size: 18px;
	
	width: 80%;
	float: left;
	margin: 0 10px;
	">
</div>

<input class="btn" type="submit" name="" value="Add Details" style="width: 100%;
	background: none;
	border: 1px solid black;
	color: grey;
	padding: 5px;
	
	font-size: 18px;
	cursor: pointer;
	margin: 12px;">
	</form>
</body>
</html>