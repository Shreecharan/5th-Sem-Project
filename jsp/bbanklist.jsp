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
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test?noAccessToProcedureBodies=true"); 
Statement st= con.createStatement(); 

ResultSet rs=st.executeQuery("select BB_ID,BB_NAME,BB_ADDRESS,BB_CONTACT,BB_TIMINGS from bloodbank"); 


%>
<h1>Blood Bank List</h1>
<% 
while(rs.next()) 
{ 
	 String ID = rs.getString("BB_ID");
     String NAME = rs.getString("BB_NAME");
     String ADDRESS = rs.getString("BB_ADDRESS");
     String CONTACT = rs.getString("BB_CONTACT");
     String TIMINGS = rs.getString("BB_TIMINGS");
%>
<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 800px;;margin-left: 300px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
       <label>Blood Bank ID	:	 </label><%out.println(ID);%>
               <br/>
		 <label>Blood Bank Name	: </label><% out.println(NAME);%>
              <br/>
       <label>Blood Bank Address	: 	</label><% out.println(ADDRESS);%>
           <br/>
          <label>Blood Bank Contact: 	</label><%out.println(CONTACT);%>
          <br>
          <label>Blood Bank Timings: 	</label><%out.println(TIMINGS);%>
          <br>
             </div>
           </div>
           <%
 }
%>
<div style="text-align: center;width: 280px;
	position: absolute;margin-left: 400px;">
	
	<form action="addbbank.jsp" method="post">
<h1 style="float: right;
	font-size: 40px;
	border-bottom: 6px solid black;
	margin-bottom: 50px;
	padding: 10px;">Add Blood Bank</h1>
	
<div style=" width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;"
>

	<i class="fa fa-user" aria-hidden="true"></i>

	<input type="text" placeholder="BB_ID" name="BB_ID" value="" style="border: none;
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
	<input type="text" placeholder="BB_NAME" name="BB_NAME" value="" style="border: none;
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
	<input type="text" placeholder="BB_ADDRESS" name="BB_ADDRESS" value="" style="border: none;
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
	<input type="text" placeholder="BB_CONTACT" name="BB_CONTACT" value="" style="border: none;
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
	
	<input type="text" placeholder="BB_TIMINGS" name="BB_TIMINGS" value="" style="border: none;
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
</div>

<input class="btn" type="submit" name="" value="Add " style="width: 100%;
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
	padding: 10px;">Remove Blood Bank</h1>
<form action="rembbank.jsp" method="post">
<div style=" width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	border-bottom: 1px solid black;">
	
		<i class="fa fa-map-marker" aria-hidden="true"></i>

		<input type="text" placeholder="BB_NAME" name="BB_NAME" value="" style="border: none;
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