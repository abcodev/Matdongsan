<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>커뮤니티 자유게시판</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardList.css"/>">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<main>
    <div class="content head">
        <div class="search_input">
            <input type="text">

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
</script>

</body>
</html>