<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 3/30/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! int counter = 0; %>
<% counter += 1; %>


<% request.setAttribute("message","this is the message im using request.setAttribute!");%>
<% request.setAttribute("favoriteBooks",new String[] {"java beginner","A Good Man is Hard to Find","Franny and Zooey","Cat's Cradle"});%>
<%--<% request.setAttribute("username",request.getParameter("username.value()"));%>--%>

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

<c:choose>
    <c:when test="${false}">
        <p>boolean_expression_1 was true</p>
    </c:when>
    <c:when test="${false}">
        <p>boolean_expression_1 was false, and boolean_expression_2 was true</p>
    </c:when>
    <c:otherwise>
        <p>none of the above tests were true</p>
    </c:otherwise>
</c:choose>

<br><br>

<ul>
    <c:forEach items="${favoriteBooks}" var = "element">
    <li>${element}</li>
        <c:if  test="${element.equalsIgnoreCase('java beginner')}">
                <h5> is much needed for this class.</h5>
        </c:if>

    </c:forEach>
    <li>list number 2</li>
    <li>list number 3</li>
</ul>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->


</body>
</html>