<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> </title>
</head>
<body>
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
  
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select Username,Bloodgrp,address,email from donars "); 
%>
<h1>Donar List</h1>
<% 
while(rs.next()) 
{ 
	 String name = rs.getString("Username");
     String bldg = rs.getString("Bloodgrp");
     String add = rs.getString("address");
     String email = rs.getString("email");
     
%>
<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 800px;;margin-left: 300px;">
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
           </div>
           <%
 }
%>

<div style="text-align: center;width: 280px;
	position: absolute;margin-left: 400px;">
	
	<form action="adddonor.jsp" method="get">
<h1 style="float: right;
	font-size: 40px;
	border-bottom: 6px solid black;
	margin-bottom: 50px;
	padding: 10px;">Add Donar</h1>
	
<div style=" width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;"
>

	<i class="fa fa-user" aria-hidden="true"></i>

	<input type="text" placeholder="Username" name="Username" value="" style="border: none;
	outline: none;
	padding: 8px 0;
	margin: 8px 0;
	background: none;
	color: black;
	font-size: 18px;
	width: 80%;
	border-bottom: 1px solid black;
	float: left;
	margin: 0 10px;
	">
	<input type="password" placeholder="password" name="password" value="" style="border: none;
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
	<input type="text" placeholder="Contact" name="Contact" value="" style="border: none;
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
	
	<input type="text" placeholder="Email" name="Email" value="" style="border: none;
	outline: none;
	background: none;
	color: black;
	font-size: 18px;
		padding: 8px 0;
	margin: 8px 0;
	width: 80%;
	border-bottom: 1px solid black;
	float: left;
	margin: 0 10px;
	">
	
	<input type="text" placeholder="Address" name="Address" value="" style="border: none;
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

<input class="btn" type="submit" name="" value="Add Donor" style="width: 100%;
	background: none;
	border: 1px solid black;
	color: grey;
	padding: 5px;
	
	font-size: 18px;
	cursor: pointer;
	margin: 12px;">
	</form>
<h1 style="float: right;
	font-size: 40px;
	border-bottom: 6px solid black;
	margin-bottom: 50px;
	padding: 10px;">Remove Donar</h1>
<form action="remdonar.jsp" method="get">
<div style=" width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;">
	
		<i class="fa fa-map-marker" aria-hidden="true"></i>

		<input type="text" placeholder="Username" name="Username" value="" style="border: none;
	outline: none;
	background: none;
	color: black;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px;
	">
	</div>
	<input class="btn" type="submit" name="" value="Remove"  style="width: 100%;
	background: none;
	border: 1px solid black;
	color: grey;
	padding: 5px;
	font-size: 18px;
	cursor: pointer;
	margin: 12px;">
	</form>
</div>

</body>
</html>