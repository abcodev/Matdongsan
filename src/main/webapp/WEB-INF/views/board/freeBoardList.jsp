<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<c:set var="flist" value="${map.flist}"/>
<c:set var="pi" value="${map.pi}"/>
<c:if test="${!empty param.condition }">
    <c:set var="sUrl" value="&condition=${param.condition}&keyword=${param.keyword }"/>
</c:if>
<c:forEach items="${boardTypeList }" var="bt">
    <c:if test="${boardCode == bt.boardCd }">
        <c:set var="boardNM" value="${bt.boardName }"/>
    </c:if>
</c:forEach>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티 자유게시판</title>
    <link rel="stylesheet" href="community_1.css">
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
                    <c:forEach var="fb" items="${flist}">
                        <Div>${fb.}</Div>
                    </c:forEach>
                </div>
                <div id="writebtn">

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


</body>
</html>