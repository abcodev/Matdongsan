<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 자유게시판</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>커뮤니티 자유게시판</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardList.css"/>">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>
<body>
<main id="main">
    <div class="content head">
        <div class="search_input">
            <select name="selectState" id="selectState" >
                <option value="">전체</option>
                <c:forEach var="stateList" items="${stateList}">
                    <option value="${stateList}">${stateList}</option>
                </c:forEach>
            </select>
            <input id="freeBoardSearch" type="text">
            <button onclick="searchState();">조회</button>
        </div>
        <div class="search_icon">

        </div>
    </div>
    <div class="content body">
        <div class="side submenu">



        </div>
        <div class="boardlist">
            <div id="boardlist_top">
                <div id="listset">



                </div>
                <div id="writebtn">
                    <button onclick="movePage()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
                </div>
            </div>
            <div id="boardlist_main">
                <c:forEach items="${freeBoardList}" var="freeBoardList">
                    <tr>
                        <td>${freeBoardList.boardTitle}</td>
                    </tr>
                </c:forEach>
            </div>
        </div>
        <div class="side best3">

        </div>
    </div>
    <div class="paging">

    </div>
</main>

<script>
    function movePage(){
        location.href = '${pageContext.request.contextPath}/board/freeList/enrollForm';
    }

    function searchState(){
        $.ajax({
            type:'GET',
            url: '${pageContext.request.contextPath}/board/freeList',
            contentType: "application/json; charset=UTF-8",
            data: {
                'state': $("#selectState").val(),
                'search' : $("#freeBoardSearch").val()
            },
            dataType: 'html',
            success : function (data){
                $('#main').html(data)
            }
        })
    }
</script>

</body>
</html>