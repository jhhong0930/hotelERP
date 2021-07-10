<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: jhhon
  Date: 2021-07-10
  Time: 오후 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

  <jsp:include page="../common/header.jsp"/>

  <form action="/emp/update" method="post">

    <h1> EMP UPDATE PAGE</h1>
    <div class="content-main">
      <div class="card">
        <div class="card-header">사원번호</div>
        <div class="card-body">
          <input type="text" name="eid" class="form-control" value="${emp.eid}" readonly="readonly">
        </div>
      </div>
      <br>
      <div class="card">
        <div class="card-header">이름</div>
        <div class="card-body">
          <input type="text" name="name" class="form-control" value="${emp.name}" readonly="readonly">
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">주민번호</div>
        <div class="card-body">
          <input type="text" name="ssd" class="form-control" value="${emp.ssn}" readonly="readonly">
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">연락처</div>
        <div class="card-body">
          <input type="text" name="phone" class="form-control" value="${emp.phone}">
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">부서</div>
        <div class="card-body ">
          <select name="did" class="form-select" aria-label="Default select example">
            <option selected>부서를 선택해주세요.</option>
            <option value="D1">프론트</option>
            <option value="D2">하우스키핑</option>
            <option value="D3">식음료</option>
            <option value="D4">백오피스</option>
          </select>
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">직급</div>
        <div class="card-body ">
          <select name="did" class="form-select" aria-label="Default select example">
            <option selected>부서를 선택해주세요.</option>
            <option value="J1">인턴</option>
            <option value="J2">사원</option>
            <option value="J3">대리</option>
            <option value="J4">팀장</option>
            <option value="J2">과장</option>
            <option value="J3">차장</option>
            <option value="J4">부장</option>
          </select>
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">월급</div>
        <div class="card-body">
          <input type="text" name="salary" class="form-control" value="${emp.salary}">
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">입사일</div>
        <div class="card-body">
          <input type="hidden" name="enterDate" class="form-control" value="${emp.enterDate}">
          <fmt:formatDate value="${emp.enterDate}" pattern="yyyy/MM/dd" />
        </div>
      </div><br>
      <div class="card">
        <div class="card-header">퇴사일</div>
        <div class="card-body">
          <input type="text" name="leaveDate" class="form-control" value="${emp.leaveDate}">
        </div>
      </div><br>
      <button type="submit" data-oper="update"  class="btn btn-success">Submit</button>
    </div>
  </form>

  <button type="submit" data-oper="list" class="btn btn-outline-info" onclick="location.href='/emp/list'">List</button>

  </form>

</body>
</html>
