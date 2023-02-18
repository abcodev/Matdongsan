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

<%--  ************예약확인창 모달***************  --%>

<div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header">
            <i class="fa-solid fa-user-check"></i>
            <span>예약 상세정보</span>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="user_info">
                <p>예약자 정보</p>
                <input type="hidden" id="revNo" value="${selectReservation.revNo}">
                <div class="user_name">
                    <span>이름</span>
                    <p>${selectReservation.memberName}</p>
                </div>
                <div class="user_phone">
                    <span>전화번호</span>
                    <p>${selectReservation.phone}</p>
                </div>
                <div class="user_email">
                    <span>이메일</span>
                    <p>${selectReservation.email}</p>
                </div>
            </div>
            <div class="reserve_info">
                <p>예약내역</p>
                <div class="realtor_name">${selectReservation.agentName}</div>
                <div class="reserve_person">
                    <span>예약인원</span>
                    <p>${selectReservation.revPeople}명</p>
                </div>
                <div class="reserve_date">
                    <span>예약날짜</span>
                    <p>${selectReservation.revDate}</p>
                </div>
                <div class="reserve_time">
                    <span>예약시간</span>
                    <p>${selectReservation.revTime}</p>
                </div>
                <div class="reserve_ask">
                    <span>요청사항</span>
                    <p>${selectReservation.revAsk}</p>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" onclick="approveRes();">예약승인</button>
            <button type="button" onclick="cancelRes();">예약취소</button>
        </div>
    </div>
</div>

<script>
    function approveRes(){
        const revNo = $('#revNo').val();

        $.ajax({
            url: "${pageContext.request.contextPath}/reservation/approve",
            data: {revNo: revNo},
            method: "GET",
            success: function (data){
                location.reload();
            }
        });
    }


    function cancelRes(){
        const revNo = $('#revNo').val();

        $.ajax({
            url: "${pageContext.request.contextPath}/reservation/cancel",
            data: {revNo : revNo},
            method: "GET",
            success: function (data){
                location.reload();
            }
        });
    }
</script>