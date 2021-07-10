
<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-09
  Time: 오후 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="../include/header.jsp"%>
<style>
    .room-list {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        justify-content: center;
    }


    .room-status {
        width: 200px;
        height: 200px;
        border: 1px solid darkslategrey;
        margin: 10px;
        text-align: center;
    }

    .all {
        padding: 0 10%;
        background-color: darkslategrey;
    }

    .room-status-color {
        background-color: #E2C3AB;
    }

    .room-status:hover {
        background-color: dimgrey;
    }

    h1 {
       text-align: center;
        color: antiquewhite;
    }
</style>
<%-- 0 비어있음     default --%>
<%-- 1 예약        orange --%>
<%-- 2 사용중      red --%>
<%-- 3 청소중      green --%>
<div class="all">
    <br>
    <h1>ROOM STATUS JSP</h1>
    <br>
    <div class="room-list">
        <c:forEach var="list" items="${roomList}">
            <div class="room-status room-status-color" onclick="location.href='/room/detail?rno=<c:out value="${list.rno}"/>'">
                ${list.rno}
                <hr>
                <c:choose>
                    <c:when test="${list.status  == '0'}">
                        <p> 예약대기 </p>
                    </c:when>
                    <c:when test="${list.status  == '1'}">
                        <p> 예약완료 </p>
                    </c:when>
                    <c:when test="${list.status == '2'}">
                        <p> 입실완료 </p>
                    </c:when>
                    <c:when test="${list.status == '3'}">
                        <p> 하우스키핑 </p>
                    </c:when>
                </c:choose>
            </div>
        </c:forEach>

    </div>
</div>



































<%--<c:forEach var="list" items="${roomList}" >--%>
<%--    <table class="table table-hover" style="float:left">--%>
<%--        <thead>--%>
<%--        <tr>--%>
<%--            <th>${list.roomNo}</th>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${list.status  == '0'}">--%>
<%--                        <p> 비어있음 </p>--%>
<%--                    </c:when>--%>
<%--                    <c:when test="${list.status  == '1'}">--%>
<%--                        <p> 예약 </p>--%>
<%--                    </c:when>--%>
<%--                    <c:when test="${list.status == '2'}">--%>
<%--                        <p> 사용중 </p>--%>
<%--                    </c:when>--%>
<%--                    <c:when test="${list.status == '3'}">--%>
<%--                        <p> 청소중 </p>--%>
<%--                    </c:when>--%>
<%--                </c:choose>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--        </tbody>--%>
<%--    </table>--%>
<%--</c:forEach>--%>



