<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-10
  Time: 오후 10:57
  Name: /emp/update.jsp
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<%@ include file="../include/header.jsp"%>
<style>
    h1 {
        text-align: center;
    }

    div {
        text-align: center;
    }
</style>
<div class="content-all">
    <form role="form" method="post" action="/emp/update">
        <h1> EMP UPDATE PAGE</h1>
        <div class="content-main">
            <div class="card">
                <div class="card-header">호실</div>
                <div class="card-body">
                    <input type="hidden" name="eid" value="${getEmp.eid}" />
                    <c:out value="${getEmp.eid}"/>
                </div>
            </div>
            <br>
            <div class="card">
                <div class="card-header">이름</div>
                <div class="card-body">
                    <input type="text" name="name" class="form-control" value="${getEmp.name}">
                </div>
            </div><br>
            <div class="card">
                <div class="card-header">주민번호</div>
                <div class="card-body">
                    <input type="text" name="ssn" class="form-control" value="${getEmp.ssn}">
                </div>
            </div><br>
            <div class="card">
                <div class="card-header">전화번호</div>
                <div class="card-body">
                    <input type="text" name="phone" class="form-control" value="${getEmp.phone}">
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
                    <select name="jid" class="form-select" aria-label="Default select example">
                        <option selected>직급을 선택해주세요.</option>
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
                    <input type="text" name="salary" class="form-control" value="${getEmp.salary}">
                </div>
            </div><br>
            <button type="submit" data-oper="update"  class="btn btn-success">Submit</button>
            <button type="submit" data-oper="list" class="btn btn-outline-info" onclick="location.href='/emp/status'">List</button>
        </div>
    </form>
</div>

<script type="text/javascript">
    $(document).ready(function () {

        var formObj = $("form");
        $('button').on("click", function (e) {
            e.preventDefault();

            var operation = $(this).data("oper");

            console.log(operation);

            if (operation === 'list'){
                formObj.attr("action", "/emp/status").attr("method", "get");
                formObj.empty();
            }
            formObj.submit();
        })
    });
</script>