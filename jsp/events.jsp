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
String name=request.getParameter("Name"); 
session.putValue("name",name); 
String motto=request.getParameter("Motto"); 
session.putValue("motto",motto); 
String subtitle=request.getParameter("Subtitle");
session.putValue("subtitle",subtitle); 
String dandd=request.getParameter("Date And Day");
session.putValue("dandd",dandd); 
String timings=request.getParameter("Timings");
session.putValue("timings",timings); 
String venue=request.getParameter("Venue");
session.putValue("venue",venue); 
String contact=request.getParameter("Contact");
session.putValue("contact",contact); 
String email=request.getParameter("Email");
session.putValue("email",email); 
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