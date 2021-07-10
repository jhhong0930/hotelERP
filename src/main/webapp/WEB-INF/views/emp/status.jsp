<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../include/header.jsp"%>
<style>
    .content-all {
        padding: 0 10%;
        background-color: darkslategrey;
    }

    h1 {
        text-align: center;
        color: #E2C3AB;
    }

    table {
        text-align: center;
        background-color: #E2C3AB;
    }

</style>

<div class="content-all">
    <h1>직원 전체 조회</h1>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>사원번호</th>
            <th>이름</th>
            <th>부서</th>
            <th>직급</th>
            <th>입사일</th>
        </tr>
        </thead>
        <tbody>
            <c:forEach var="list" items="${empList}">
                <tr onclick="location.href='/emp/detail?eid=${list.eid}'">
                    <td>${list.eid}</td>
                    <td>${list.name}</td>
                    <td>${list.did}</td>
                    <td>${list.jid}</td>
                    <td><fmt:formatDate value="${list.enterDate}" pattern="yyyy/MM/dd" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>