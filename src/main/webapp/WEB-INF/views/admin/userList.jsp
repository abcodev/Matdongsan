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
    <title>Document</title>
    <style>
        th {
            width: 100px;
        }
        table{
            border: 1px solid black;
        }
    </style>
</head>
<body>

<head>
    <title>관리자 화원관리 페이지</title>
</head>

<%@ include file ="../template/header.jsp" %>
<div>
    <br><br><br><br><br><br><br>
    <button type="button">회원관리</button>
    <button type="button" id="movePage">신고관리</button>


    <br><br><br><br><br>
    <table>
        <tr>
            <th>글번호</th>
            <th>아이디</th>
            <th>이메일</th>
            <th>이름</th>
            <th>상태</th>
        </tr>
        <c:forEach var="ul" items="${list}">
        <tr>
            <th>${ul.memberNo}</th>
            <th>${ul.email}</th>
            <th>${ul.email}</th>
            <th>${ul.memberName}</th>
            <c:if test="${ul.status = 'N'}">
            <th>정지</th>
            </c:if>
            <c:if test="${ul.status = 'Y'}">
                <th>일반</th>
            </c:if>

        </tr>
        </c:forEach>
    </table>
</div>

<script>
    $(function(){
        $("#movePage").click(function(){
            $.ajax({
                type:"POST",
                url:"/Matdongsan/admin/reportList",
                data: {},
                dataType: "html",
                cache : false,
                success(data){
                    $("body").html(data);
                }
            });
        });
    });
</script>
</body>
</html>




