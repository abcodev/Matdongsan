<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2023/02/14
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<jsp:include page="../template/font.jsp"/>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <i class="fa-solid fa-user-check"></i>
            <span>예약 상세정보</span>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <c:forEach var="reservationList" items="${reservationList}">
            <div class="modal-body">
                <div class="user_info">
                    <p>예약자 정보</p>
                    <div class="user_name">
                        <span>이름</span>
                        <p>${reservationList.memberName}</p>
                    </div>
                    <div class="user_phone">
                        <span>전화번호</span>
                        <p>${reservationList.phone}</p>
                    </div>
                    <div class="user_email">
                        <span>이메일</span>
                        <p>${reservationList.email}</p>
                    </div>
                </div>
                <div class="reserve_info">
                    <p>예약내역</p>
                    <div class="realtor_name">${reservationList.agentName}</div>
                    <div class="reserve_person">
                        <span>예약인원</span>
                        <p>${reservationList.peopleCount}</p>
                    </div>
                    <div class="reserve_date">
                        <span>예약날짜</span>
                        <p>${reservationList.revDate}</p>
                    </div>
                    <div class="reserve_time">
                        <span>예약시간</span>
                        <p>${reservationList.revTime}</p>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <c:choose>
                    <c:when test="${reservationList.status eq '예약취소'}">
                        <button type="button" class="disabled">취소된 예약입니다.</button>
                    </c:when>
                    <c:otherwise>
                        <button type="button" onclick="deleteReservation();">예약취소</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </c:forEach>
    </div>
</div>