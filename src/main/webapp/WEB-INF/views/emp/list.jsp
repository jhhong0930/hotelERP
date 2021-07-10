<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        table{
            text-align: center;
        }
    </style>
</head>
<body>

  <jsp:include page="../common/header.jsp"/>


  <table class="table table-hover table-striped">
      <thead>
          <tr>
              <th>직원번호</th>
              <th>이름</th>
              <th>부서</th>
              <th>직급</th>
              <th>입사일</th>
          </tr>
      </thead>
      <tbody>
        <c:forEach var="list" items="${list}">
            <tr onclick="location.href='/emp/detail?eid=${list.eid}'">
                <td>${list.eid}</td>
                <td>${list.name}</td>
                <td>${list.did}</td>
                <td>${list.jid}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.enterDate}" /></td>
            </tr>
        </c:forEach>
      </tbody>
  </table>



</body>
</html>
