<%--
  Created by IntelliJ IDEA.
  User: kwonw
  Date: 2021-07-10
  Time: 오후 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/header.jsp"%>
<style>
    .content-all {
        padding: 0 50%;
    }

    h1 {
        text-align: center;
    }

    .btn {

    }
</style>
<div class="content-all">
    <h1> LOGIN </h1>
    <form action="/security/login" method="post">
        <div class="form-group">
            <input type="text" class="form-control" id="usr" placeholder="Input Your ID" />
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="pwd" placeholder="Input Your Password" />
        </div> <br>
        <div align="center">
            <button type="submit"  class="btn btn-outline-primary"> 로그인 </button>
            <button type="submit"  class="btn btn-outline-warning"> 찾기 </button>
        </div>
    </form>
</div>