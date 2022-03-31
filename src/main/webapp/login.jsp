<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 3/31/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<%! String username = (String) request.getParameter("username");%>--%>
<%--<%! String password = (String) request.getParameter("password");%>--%>



<%  request.setAttribute("username",request.getParameter("username"));%>
<%  request.setAttribute("password",request.getParameter("password"));%>

<%--<%  request.setAttribute("profile","/login.jsp");%>--%>

<html>
<head>
    <title>log in Form</title>
</head>
<body>


<%--LOG IN FORM--%>
<form action= "login.jsp "method="post">
  <label for="username">User Name</label>
  <input type="text" id="username" name = "username"  placeholder="user name here">
  <label for="password">password</label>
  <input type="password" id="password" name="password"  placeholder="password here">

  <button type="submit">Log in</button>
</form>

<%-- If the username submitted is "admin", and the password is "password", redirect the user to the profile page; otherwise, redirect back to the login form.--%>


<%--<%  request.setAttribute("username",request.getParameter("username"));%>--%>
<%--<%  request.setAttribute("password",request.getParameter("password"));%>--%>
<%--<c:if test="${username.equalsIgnoreCase('admin') && password.equalsIgnoreCase('password')}">--%>
<%--  <h1>hello is this working finally?</h1>--%>
<%--&lt;%&ndash;  <c:redirect url="/profile.jsp"/>&ndash;%&gt;--%>
<%--</c:if>--%>
<%--<c:if test = "${!username.equalsIgnoreCase('admin') || !password.equalsIgnoreCase('password') || username == null || password == null}">--%>
<%--  <h1>wrong input !! try again </h1>--%>
<%--</c:if>--%>



<c:if test="${username.equalsIgnoreCase('admin') && password.equalsIgnoreCase('password')}">
  <h1>hello is this working finally?</h1>
  <%--  <c:redirect url="/profile.jsp"/>--%>
</c:if>

<c:if test= "${username !='admin' || password !='password' || username == null || password == null}">
  <h1>wrong input !! try again </h1>
</c:if>>





</body>
</html>
