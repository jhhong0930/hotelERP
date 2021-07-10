<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-09
  Time: 오후 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        .room-area{
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
        }
        .room{
            border: 1px solid lightgray;
            width: 200px;
            height: 200px;
            margin: 6px;
            text-align: center;
        }
        .room:hover{
            background: darkgray;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <aside>



    </aside>

    <div class="room-area">

        <c:forEach var="r" items="${list}">
            <div class="room" onclick="location.href='/room/detail?rno=<c:out value="${r.rno}" />'">
                ${r.rno}
                <hr>
                <c:choose>
                    <c:when test="${r.status == '0'}">
                        예약대기
                    </c:when>
                    <c:when test="${r.status == '1'}">
                        예약완료
                    </c:when>
                    <c:when test="${r.status == '2'}">
                        입실완료
                    </c:when>
                    <c:otherwise>
                        하우스키핑
                    </c:otherwise>
                </c:choose>
            </div>


        </c:forEach>

    </div>




</body>
</html>
