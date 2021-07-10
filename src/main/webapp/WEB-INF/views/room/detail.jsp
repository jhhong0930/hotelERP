<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-10
  Time: 오후 12:22
  To change this template use File | Settings | File Templates.
--%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <h1> ROOM DETAIL </h1>
    <div class="content-main">
        <div class="card">
            <div class="card-header">호실</div>
            <div class="card-body"><c:out value="${getRoom.rno}"/></div>
        </div>
        <br>
        <div class="card">
            <div class="card-header">등급</div>
            <div class="card-body"><c:out value="${getRoom.grade}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">가격</div>
            <div class="card-body"><c:out value="${getRoom.price}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">상태</div>
            <div class="card-body ">
                <c:out value="${getRoom.status}"/> :
                <c:choose>
                    <c:when test="${getRoom.status  == '0'}">
                       예약대기
                    </c:when>
                    <c:when test="${getRoom.status  == '1'}">
                        예약완료
                    </c:when>
                    <c:when test="${getRoom.status == '2'}">
                        입실완료
                    </c:when>
                    <c:when test="${getRoom.status == '3'}">
                        하우스키핑
                    </c:when>
                </c:choose>
            </div>
        </div><br>
        <button type="submit" class="btn btn-outline-secondary" onclick="location.href='update?rno=<c:out value="${getRoom.rno}" />'">Update</button>
        <button type="submit" data-oper="list" class="btn btn-outline-info"  onclick="location.href='/'">List</button>
    </div>
</div>
























<%--    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">--%>
<%--        Info Update--%>
<%--    </button>--%>

<%--    <!-- The Modal -->--%>
<%--    <div class="modal" id="myModal">--%>
<%--        <div class="modal-dialog">--%>
<%--            <div class="modal-content">--%>
<%--                <!-- Modal Header -->--%>
<%--                <div class="modal-header">--%>
<%--                    <h4 class="modal-title">Modal Heading</h4>--%>
<%--                    <button type="button" class="close" data-dismiss="modal">&times;</button>--%>
<%--                </div>--%>

<%--                <form method="post" action="/update">--%>
<%--                    <!-- Modal body -->--%>
<%--                    <div class="modal-body">--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="no">호실</label>--%>
<%--                            <input type="text" class="form-control" id="no" value="${getRoom.roomNo}" readonly="readonly">--%>
<%--                        </div><br>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="grade">등급</label>--%>
<%--                            <input type="text" class="form-control" id="grade" value="${getRoom.roomGrade}">--%>
<%--                        </div><br>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="price">가격</label>--%>
<%--                            <input type="text" class="form-control" id="price" value="${getRoom.price}">--%>
<%--                        </div><br>--%>
<%--                        <div class="form-group">--%>
<%--                            <label for="status">상태</label>--%>
<%--                            <input type="text" class="form-control" id="status" value="${getRoom.status}">--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </form>--%>
<%--                <!-- Modal footer -->--%>
<%--                <div class="modal-footer">--%>
<%--                    <button type="submit" class="btn btn-warning updateBtn" data-dismiss="modal" >Update</button>--%>
<%--                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>--%>
<%--                </div>--%>

<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<script>--%>
<%--    var modal = $("#updateBtn");--%>
<%--    document.querySelector(".updateBtn").onclick = function () {--%>
<%--        var updateInfo = {--%>
<%--            roomNo : document.querySelector("#no").value,--%>
<%--            roomGrade : document.querySelector("#grade").value,--%>
<%--            price : document.querySelector("#price").value,--%>
<%--            status : document.querySelector("#status").value--%>
<%--        }--%>
<%--    };--%>
<%--</script>--%>