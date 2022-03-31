<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 3/31/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<% String username = (String) request.getParameter("username");%>--%>
<%--<% String password = (String) request.getParameter("password");%>--%>



<%  request.setAttribute("username",request.getParameter("username"));%>
<%  request.setAttribute("password",request.getParameter("password"));%>
<%--<%  request.setAttribute("profile","/login.jsp");%>--%>

<%--String redirectURL = "http://whatever.com/myJSPFile.jsp";--%>
<%--response.sendRedirect(redirectURL);--%>

<html>
<head>
    <title>log in Form</title>
</head>
<body>


<%--LOG IN FORM--%>
<form method="post">
  <label for="username">User Name</label>
  <input type="text" id="username" name = "username" placeholder="user name here">
  <label for="password">password</label>
  <input type="password" id="password" name="password" placeholder="password here">

  <button type="submit">Log in</button>
</form>

<%-- If the username submitted is "admin", and the password is "password", redirect the user to the profile page; otherwise, redirect back to the login form.--%>

<c:choose>
<c:when test="${username.equalsIgnoreCase('admin') && password.equalsIgnoreCase('password')}">
  <h1>is this working???? </h1>

  <c:redirect url="/profile.jsp"/>
</c:when>

  <c:otherwise>
    <c:redirect url="/login.jsp"/>
  </c:otherwise>







</c:choose>


</body>
</html>
