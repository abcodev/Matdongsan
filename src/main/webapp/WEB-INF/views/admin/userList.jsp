<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8" %>
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/userList.css"/>">
    <title>Document</title>
</head>

<body>
<%@ include file="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button type="button" class="b1" id="userList" style="color: white; background: #585c9c; border: white">회원관리</button>
    <button type="button" class="b2" id="reportList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">신고관리</button>
    <button type="button" class="b3" id="moveBrokerList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">부동산관리</button>
</div>
<br><br><br><br>
<div class="memberTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>회원번호</th>
            <th>소셜사</th>
            <th>아이디</th>
            <th>회원명</th>
            <th>닉네임</th>
            <th>최근 접속일</th>
            <th>회원등급</th>
            <th>회원상태</th>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="ul" items="${userList}">
            <tr id="memberData">
                <td>${ul.memberNo}</td>
                <td>${ul.provider}</td>
                <td>${ul.providerId}</td>
                <td>${ul.memberName}</td>
                <td>${ul.nickName}</td>
                <td>${ul.recentAccess.substring(0,16)}</td>
                <td>${ul.grade}</td>
                <td>${ul.status}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div id="paging">
    <ul class="pagination">
        <c:choose>
            <c:when test="${ pi.currentPage eq 1 }">
                <li class="page-link disabled"><</li>
            </c:when>
            <c:otherwise>
                <li class="page-link" onclick="retrieveUserList(${pi.currentPage - 1})"><</li>
            </c:otherwise>
        </c:choose>

        <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
            <li class="page-item" onclick="retrieveUserList(${item})">${item }</li>
        </c:forEach>

        <c:choose>
            <c:when test="${ pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#"></a>></li>
            </c:when>
            <c:otherwise>
                <li class="page-link" onclick="retrieveUserList(${pi.currentPage + 1})">></li>
            </c:otherwise>
        </c:choose>
    </ul>

</div>

<script>

    $('#moveBrokerList').click(function () {
        location.href = "${pageContext.request.contextPath}/admin/brokerList"
    });

    $("#reportList").click(function () {
        location.href = "${pageContext.request.contextPath}/admin/reportList"
    });

    function retrieveUserList(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/admin/userList',
            method: 'GET',
            data: {
                cpage: current_page,
            },
            dataType: 'html',
            success: function (data) {
                $('#tableDiv').empty();
                $('.pagination').empty();
                $('.paging').html($(data).find('.pagination')) ;
                if ($(data).find("#memberData").length > 0) {
                    $('.memberTable').html($(data).find("#tableDiv"))
                } else {
                    $('.memberTable').html('<p>조회된 회원이 없습니다.</p>');
                }
            }
        })
    }

    // function hideId(){
    //     const len =
    //
    //     for(let i = 0; i < len; i++){
    //
    //     }
    // }












</script>
</body>
</html>