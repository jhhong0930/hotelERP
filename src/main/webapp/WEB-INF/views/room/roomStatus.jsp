
<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-09
  Time: 오후 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>ROOM STATUS JSP</h1>
<c:forEach var="list" items="${roomList}">
    ${list.roomNo} <br>
    ${list.roomGrade} <br>
    ${list.price} <br>
    ${list.status} <hr>
</c:forEach>
</body>
</html>
