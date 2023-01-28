<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<c:if test="${!empty param.condition }">
    <c:set var="sUrl" value="&condition=${param.condition}&keyword=${param.keyword }"/>
</c:if>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>커뮤니티 자유게시판</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardList.css"/>">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>
<main>
    <div class="content head">
        <form id="searchForm">
            <div class="select">
                <select class="custom-select" name="condition">
                    <option value="title">제목</option>
                    <option value="content">내용</option>
                    <option value="area">지역</option>
                </select>
            </div>
            <div class="search_input">
                <input type="text" name="keyword">
            </div>
            <div class="search_icon">
                <button><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
        </form>
    <div class="content body">
        <div class="side submenu">
            <div>
                <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                <a href="${pageContext.request.contextPath}/board/qnaList">질문과 답변</a>
            </div>
        </div>
        <div class="boardlist">
            <div id="boardlist_top">
                <div id="listset">

                </div>
                <button id="writebtn" onclick=""><i class="fa-solid fa-pencil"></i>글작성하기</button>
            </div>
            <div id="boardlist_main">

            </div>
        </div>
        <div class="side best3">

        </div>
    </div>
    <div class="paging">

    </div>
</main>


</body>
</html>