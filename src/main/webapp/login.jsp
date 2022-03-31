<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 3/31/22
  Time: 11:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%  request.setAttribute("username",request.getParameter("username"));%>
<%  request.setAttribute("password",request.getParameter("password"));%>


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


<%--i want to see wrong password--%>
<span>${username}</span>
<span>${password}</span>



<c:if test="${username.equalsIgnoreCase('admin') && password.equalsIgnoreCase('password')}">
  <c:redirect url="/profile.jsp"/>
  <c:if test = "${!username.equalsIgnoreCase('admin') || !password.equalsIgnoreCase('password') || username == null || password == null}">
    <c:redirect url="/login.jsp"/>
  </c:if>
</c:if>



<



</body>
</html>
