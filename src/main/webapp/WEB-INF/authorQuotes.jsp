<%--
  Created by IntelliJ IDEA.
  User: mina.mcgonigal
  Date: 4/6/22
  Time: 9:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Quotes</title>
</head>
<body>
<c:forEach var="quote" items="${quoteListView}">
    <p>${quote}</p>
</c:forEach>
</body>
</html>
