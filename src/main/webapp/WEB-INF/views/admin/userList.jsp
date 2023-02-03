<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/userList.css"/>">
    <title>Document</title>

</head>

<body>
<%@ include file ="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button id="b1">회원관리</button>
    <button type="button" class="b2" id="movePage">신고관리</button>
</div>
<br><br><br><br>
<div id="tableDiv">
<table>
    <thead>
    <tr>
        <th>No</th>
        <th>아이디</th>
        <th>이메일</th>
        <th>이름</th>
        <th>회원 상태</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="ul" items="${list}">
    <tr>
        <td>${ul.memberNo}</td>
        <td>${ul.email}</td>
        <td>${ul.email}</td>
        <td>${ul.memberName}</td>
        <td>영구정지</td>
        <input type="hidden" value="${ul.freeBno}"/>
    </tr>
    </c:forEach>

    </tbody>
</table>
</div>
<script>

    $(function(){
        $("#movePage").click(function(){
            $.ajax({
                type:"POST",
                url:"/Matdongsan/admin/reportList",
                data: {freeBno : ${ad.freeBno}},
                dataType: "html",
                cache : false,
                success(data){
                    $("body").html(data);
                }
            });
        });
    });



    $(function(){
        $("#movePage").click(function(){

    $("#b1").css(
        {
            "color": "#585c9c",
            "background" : "#eaeaed",
            "border" : "#eaeaed"
        });
    $(".b2").css(
            {
                "color": "#eaeaed",
                "background" : "#585c9c",
                "border" : "#585c9c"
            });
        });
    });







</script>
</body>
</html>