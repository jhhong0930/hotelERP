<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>$Title$</title>
    <style>
        .button-area{
            text-align: center;
        }
    </style>
</head>
<body>

  <jsp:include page="../common/header.jsp"/>

  <div class="card">
      <div class="card-header">사원번호</div>
      <div class="card-body"><c:out value="${emp.eid}" /></div>
  </div>
  <div class="card">
      <div class="card-header">이름</div>
      <div class="card-body"><c:out value="${emp.name}" /></div>
  </div>
  <div class="card">
      <div class="card-header">주민번호</div>
      <div class="card-body"><c:out value="${emp.ssn}" /></div>
  </div>
  <div class="card">
      <div class="card-header">연락처</div>
      <div class="card-body"><c:out value="${emp.phone}" /></div>
  </div>
  <div class="card">
      <div class="card-header">부서명</div>
      <div class="card-body">
          <c:choose>
              <c:when test="${emp.did == 'D1'}">
                  Front
              </c:when>
              <c:when test="${emp.did == 'D2'}">
                  House Keeping
              </c:when>
              <c:when test="${emp.did == 'D3'}">
                  F&B
              </c:when>
              <c:otherwise>
                  Back Office
              </c:otherwise>
          </c:choose>
      </div>
  </div>
  <div class="card">
      <div class="card-header">직급명</div>
      <div class="card-body">
          <c:choose>
              <c:when test="${emp.jid == 'J1'}">
                  인턴
              </c:when>
              <c:when test="${emp.jid == 'J2'}">
                  사원
              </c:when>
              <c:when test="${emp.jid == 'J3'}">
                  대리
              </c:when>
              <c:when test="${emp.jid == 'J4'}">
                  팀장
              </c:when>
              <c:when test="${emp.jid == 'J5'}">
                  과장
              </c:when>
              <c:when test="${emp.jid == 'J6'}">
                  차장
              </c:when>
              <c:otherwise>
                  부장
              </c:otherwise>
          </c:choose>
      </div>
  </div>
  <div class="card">
      <div class="card-header">월급</div>
      <div class="card-body"><c:out value="${emp.salary}" /></div>
  </div>
  <div class="card">
      <div class="card-header">입사일</div>
      <div class="card-body"><fmt:formatDate pattern="yyyy-MM-dd" value="${emp.enterDate}" /></div>
  </div>
  <div class="card">
      <div class="card-header">퇴사일</div>
      <div class="card-body">
          <c:choose>
              <c:when test="${emp.leaveDate == null}">
                  재직중
              </c:when>
              <c:otherwise>
                  <fmt:formatDate pattern="yyyy-MM-dd" value="${emp.leaveDate}" />
              </c:otherwise>
          </c:choose>
      </div>
  </div>

  <br>

    <div class="button-area">
        <button class="btn btn-outline-warning" onclick="location.href='/emp/update?eid=${emp.eid}'">수정</button>
        <button class="btn btn-outline-info" onclick="location.href='/emp/list'">목록</button>
    </div>

  <br>

</body>
</html>
