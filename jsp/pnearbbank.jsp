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
 String Locality=request.getParameter("Locality");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select BB_ID,BB_NAME,BB_ADDRESS,BB_CONTACT,BB_TIMINGS from bloodbank where BB_ADDRESS='"+Locality+"' "); 
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


</body>
</html>