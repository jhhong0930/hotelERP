<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <h2>Login Page</h2>

    <form action="/login" method="post">

        <div class="form-group">
          <label>ID:</label>
          <input type="text" class="form-control">
        </div>
        <div class="form-group">
          <label>Password:</label>
          <input type="password" class="form-control">
        </div>
         <div align="center">
             <button  type="submit" class="btn btn-outline-primary">로그인</button>
             <button type="button" class="btn btn-outline-warning">찾기</button>
         </div>

    </form>


</body>
</html>
