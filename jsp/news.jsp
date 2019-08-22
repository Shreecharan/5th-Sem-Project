<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Regjsp</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %> 
<%

String name=(String)session.getValue("name"); 
String motto=(String)session.getValue("motto"); 
String subtitle=(String)session.getValue("subtitle"); 
String dandd=(String)session.getValue("dandd"); 
String timings=(String)session.getValue("timings"); 
String venue=(String)session.getValue("venue"); 
String contact=(String)session.getValue("contact"); 
String email=(String)session.getValue("email"); 
%>
<h1 style="text-align:center">Event</h1>
<div style="background-color: #330D0D; color: #ffffff; margin-top: 20px; width: 800px;margin-left: 500px;text-align:left;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
<br/>
							<h1><%out.println(name);%></h1>
               <br/>
		 					<h2><% out.println(motto);%></h2>
              <br/>
       						<h3><% out.println(subtitle);%></h3>
           <br/>
           <h4> <label>Date and Day :	</label><% out.println(dandd);%></h4> 
           <br/>
            <h4>  <label>Timings :	</label><% out.println(timings);%></h4> 
           <br/>
             <h4> <label>Venue: 	</label><% out.println(venue);%></h4> 
           <br/>
          <h4>   <label>Kindly Contact 	</label><% out.println(contact);%></h4> 
           <br/>
          <h4> <label>Email	: 	</label><%out.println(email);%></h4> 
          <br>
          </div>
          </div>
 </body>
</html>   