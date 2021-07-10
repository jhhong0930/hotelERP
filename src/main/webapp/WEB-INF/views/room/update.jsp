<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-10
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
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
    .content-main {
        padding: 0 40%;
    }

    div {
        text-align: center;
    }
</style>
<div class="content-all">
    <form role="form" method="post" action="/room/update">
        <h1> ROOM UPDATE </h1>
        <div class="content-main">
            <div class="card">
                <div class="card-header">호실</div>
                <div class="card-body">
                    <input type="hidden" name="rno" value="${getRoom.rno}" />
                    <c:out value="${getRoom.rno}"/>
                </div>
            </div>
            <br>
            <div class="card">
                <div class="card-header">등급</div>
                <div class="card-body">
                    <input type="text" name="grade" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="${getRoom.grade}">
                </div>
            </div><br>
            <div class="card">
                <div class="card-header">가격</div>
                <div class="card-body">
                    <input type="text" name="price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" value="${getRoom.price}">
                </div>
            </div><br>
            <div class="card">
                <div class="card-header">상태</div>
                <div class="card-body ">
                    <select name="status" class="form-select" aria-label="Default select example">
                        <option selected>객실상태선택하세요</option>
                        <option value="0">예약대기</option>
                        <option value="1">예약완료</option>
                        <option value="2">입실완료</option>
                        <option value="3">하우스키핑</option>
                    </select>
                </div>
            </div><br>
            <button type="submit" data-oper="update"  class="btn btn-success">Submit</button>
            <button type="submit" data-oper="list" class="btn btn-outline-info" onclick="location.href='/'">List</button>
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
                // self.location = "/board/list";
                formObj.attr("action", "/").attr("method", "get");
                formObj.empty();
            }
            formObj.submit();
        })
    });
</script>
