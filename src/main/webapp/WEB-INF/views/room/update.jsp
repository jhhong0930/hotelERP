<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

    <jsp:include page="../common/header.jsp" />

    <form action="/room/update" method="post">

        <div class="card">
            <div class="card-header">객실번호</div>
            <div class="card-body">
                <input type="hidden" name="rno" value="${room.rno}" />
                <c:out value="${room.rno}"/>
            </div>
        </div>
        <br>
        <div class="card">
            <div class="card-header">객실등급</div>
            <div class="card-body">
                <input type="text" name="roomGrade" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="${room.grade}">
            </div>
        </div><br>
        <div class="card">
            <div class="card-header">객실가격</div>
            <div class="card-body">
                <input type="text" name="price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="${room.price}">
            </div>
        </div><br>
        <div class="card">
            <div class="card-header">객실상태</div>
            <div class="card-body ">
                <select name="status" class="form-select" aria-label="Default select example">
                    <option selected>객실상태</option>
                    <option value="0">예약대기</option>
                    <option value="1">예약완료</option>
                    <option value="2">입실완료</option>
                    <option value="3">하우스키핑</option>
                </select>
            </div>
        </div>

        <button type="submit" data-oper="update" class="btn btn-warning">수정</button>

    </form>

</body>
</html>
