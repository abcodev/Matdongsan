<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>자유게시판 작성</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardEnroll.css"/>">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>

<%@ include file="../template/header.jsp" %>

<div id="content">
    <div class="enroll_form">

    <h2>자유게시판</h2>

    <form id="enrollForm" method="post" action="${pageContext.request.contextPath}/board/freeList/insert">
        <div class="form_head">
            title : <input type="text" name="boardTitle" required>
        <br>
        <input type="hidden" name="boardWriter" value="${loginUser.nickName}">

        <br>
        <select id="boardArea" name="boardArea">
            <c:forEach var="localList" items="${localList}">
                <option value="${localList}">${localList}</option>
            </c:forEach>
        </select>

        <br><br>

        </div>
        <div class="form_body">
        content : <textarea name="boardContent" id="boardContent" required></textarea>
        </div>
        <br><br>
        <button type="submit" class="btn btn-primary">등록하기</button>

        <button type="reset"  class="btn btn-danger">취소하기</button>
    </form>
    </div>
</div>
</body>
</html>
