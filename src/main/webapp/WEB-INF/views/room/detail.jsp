<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 12:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        .card{
            margin: 5px 0;
        }
    </style>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <div class="card">
        <div class="card-header">객실번호</div>
        <div class="card-body"><c:out value="${room.rno}" /></div>
    </div>
    <div class="card">
        <div class="card-header">객실등급</div>
        <div class="card-body"><c:out value="${room.grade}" /></div>
    </div>
    <div class="card">
        <div class="card-header">객실가격</div>
        <div class="card-body"><c:out value="${room.price}" /></div>
    </div>
    <div class="card">
        <div class="card-header">객실상태</div>
        <div class="card-body">
            <c:choose>
                <c:when test="${room.status == '0'}">
                    0: 예약대기
                </c:when>
                <c:when test="${room.status == '1'}">
                    1: 예약완료
                </c:when>
                <c:when test="${room.status == '2'}">
                    2: 입실완료
                </c:when>
                <c:otherwise>
                    3: 하우스키핑
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <!-- Button to Open the Modal -->
    <button class="btn btn-outline-primary" onclick="location.href='/room/update?rno=<c:out value="${room.rno}"/> '">
        수정
    </button>
    <button class="btn btn-outline-info" onclick="location.href='/'">목록</button>


</body>
</html>
