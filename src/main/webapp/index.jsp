<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 3/30/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1; %>


<% request.setAttribute("message","this is the message im using request.setAttribute!");%>


<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1>The current count is <%= counter %>.</h1>
<h5>Experiment #3 - Do we need servlet to access params ? </h5>
<h5>Do we see the result from our  query  string? my favorite
    food is: ${param.fav_food}</h5><br><br>


<h5>what was our secret message?<br><br>
    here it is :: -->>> ${message}</h5>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->


</body>
</html>