<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/userList.css"/>">
    <title>Document</title>

</head>

<body>
<%@ include file="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button type="button" class="b1" id="userList">회원관리</button>
    <button type="button" class="b2" id="reportList">신고관리</button>
    <button type="button" class="b3" id="moveBrokerList">부동산관리</button>
</div>
<br><br><br><br>
<div class="memberTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>회원번호</th>
<%--            <th>프로바이더</th>--%>
<%--            <th>프로바이더아이디</th>--%>
            <th>회원명</th>
<%--            <th>닉네임</th>--%>
<%--            <th>최근 접속일</th>--%>
<%--            <th>회원등급 grade</th>--%>
<%--            <th>회원 상태 status</th>--%>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="ul" items="${userList}">
            <tr id="memberData">
                <td>${ul.memberNo}</td>
<%--                <td>${ul.provider}</td>--%>
<%--                <td>${ul.providerId}</td>--%>
                <td>${ul.memberName}</td>
<%--                <td>${ul.grade}</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<div class="paging">
    <ul class="pagination">
        <c:choose>
            <c:when test="${ pi.currentPage eq 1 }">
                <li class="page-item disabled">Previous</li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="retrieveUserList(${pi.currentPage - 1})">Previous</li>
            </c:otherwise>
        </c:choose>

        <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
            <li class="page-item" onclick="retrieveUserList(${item})"><${item }></li>
        </c:forEach>

        <c:choose>
            <c:when test="${ pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="retrieveUserList(${pi.currentPage + 1})">Next</li>
            </c:otherwise>
        </c:choose>
    </ul>

</div>

<script>

    $('#moveBrokerList').click(function (){
        $.ajax({
            type : "POST",
            url : "${pageContext.request.contextPath}/admin/brokerList",
            dataType : "html",
            success : function (data){
                $("body").html(data);
            }
        })
    });

    $("#userList").click(function () {
        $.ajax({
            type: "POST",
            url: "/${pageContext.request.contextPath}/admin/userList/" +${fNo},
            data: {},
            dataType: "html",
            cache: false,
            success(data) {
                $("body").html(data);
            }
        });
    });


    $("#reportList").click(function () {

        $.ajax({
            type: "POST",
            url: "/Matdongsan/admin/reportList/" +${fNo},
            data: {},
            dataType: "html",
            cache: false,
            success(data) {
                $("body").html(data);
            }
        });
    });


    function retrieveUserList(current_page) {

        $.ajax({
            url: '${pageContext.request.contextPath}/admin/userList/' + ${fNo},
            method: 'GET',
            data: {
                cpage: current_page,
            },
            dataType: 'html',
            success: function (data) {
                $('#tableDiv').empty();
                console.log("test"+$(data).find("#tableDiv"));
                console.log($(data).find("#tableDiv").length);
                if ($(data).find("#memberData").length > 0) {
                    $('.memberTable').html($(data).find("#tableDiv"))
                } else {
                    $('.memberTable').html('<p>조회된 회원이 없습니다.</p>');
                }

            }
        })
    }


    $(function () {
        $("#movePage").click(function () {

            $("#b1").css(
                {
                    "color": "#585c9c",
                    "background": "#eaeaed",
                    "border": "#eaeaed"
                });
            $(".b2").css(
                {
                    "color": "#eaeaed",
                    "background": "#585c9c",
                    "border": "#585c9c"
                });ㄷ
        });
    });


</script>
</body>
</html>