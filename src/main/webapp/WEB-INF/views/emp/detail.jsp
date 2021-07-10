<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <h1> "${getEmp.name}" 사원 정보 </h1>
    <div class="content-main">
        <div class="card">
            <div class="card-header">사원번호</div>
            <div class="card-body"><c:out value="${getEmp.eid}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">이름</div>
            <div class="card-body"><c:out value="${getEmp.name}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">주민번호</div>
            <div class="card-body"><c:out value="${getEmp.ssn}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">전화번호</div>
            <div class="card-body"><c:out value="${getEmp.phone}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">부서</div>
            <div class="card-body ">
                <c:choose>
                    <c:when test="${getEmp.did  == 'D1'}">
                        프론트
                    </c:when>
                    <c:when test="${getEmp.did  == 'D2'}">
                        하우스키핑
                    </c:when>
                    <c:when test="${getEmp.did == 'D3'}">
                        식음료
                    </c:when>
                    <c:when test="${getEmp.did == 'D4'}">
                        백오피스
                    </c:when>
                </c:choose>
            </div>
        </div><br>
        <div class="card">
            <div class="card-header">직급</div>
            <div class="card-body ">
                <c:choose>
                    <c:when test="${getEmp.jid  == 'J1'}">
                        인턴
                    </c:when>
                    <c:when test="${getEmp.jid  == 'J2'}">
                        사원
                    </c:when>
                    <c:when test="${getEmp.jid == 'J3'}">
                        대리
                    </c:when>
                    <c:when test="${getEmp.jid == 'J4'}">
                        팀장
                    </c:when>
                    <c:when test="${getEmp.jid == 'J5'}">
                        과장
                    </c:when>
                    <c:when test="${getEmp.jid == 'J6'}">
                        차장
                    </c:when>
                    <c:when test="${getEmp.jid == 'J7'}">
                        부장
                    </c:when>
                </c:choose>
            </div>
        </div><br>
        <div class="card">
            <div class="card-header">월급</div>
            <div class="card-body"><c:out value="${getEmp.salary}"/></div>
        </div><br>
        <div class="card">
            <div class="card-header">입사일</div>
            <div class="card-body">
                <fmt:formatDate value="${getEmp.enterDate}" pattern="yyyy/MM/dd" />
            </div>
        </div><br>
        <div class="card">
            <div class="card-header">퇴사일</div>
            <c:choose>
                <c:when test="${getEmp.leaveDate == null}">
                    재직중
                </c:when>
                <c:otherwise>
                    <<c:out value="${getEmp.leaveDate}"/>
                </c:otherwise>
            </c:choose>
        </div><br>

        <button type="submit" class="btn btn-outline-secondary" onclick="location.href='update?eid=<c:out value="${getEmp.eid}" />'">Update</button>
        <button type="submit" data-oper="list" class="btn btn-outline-info"  onclick="location.href='/emp/status'">List</button>
    </div>
</div>
