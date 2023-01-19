<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!DOCTYPE html>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--&lt;%&ndash;<jsp:include page="common/header.jsp" />&ndash;%&gt;--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>시작페이지</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/startPage.css"/>">
    <jsp:include page="../views/template/font.jsp"></jsp:include>
</head>
<body>
<div id="bgd"></div>
<div id="content" class="container-max">
    <h1>맛동산</h1>
    <p>정확한 실거래가와 맛집 & 동네정보까지 한번에!</p>
    <a href="${pageContext.request.contextPath}/mainPage" id="startPage"><strong>start here</strong></a>

    <c:choose>
        <c:when test="${ empty loginUser}">
            <a href="${pageContext.request.contextPath}/loginPage" id="startPage"><strong>로그인</strong></a>
        </c:when>
        <c:otherwise>
            <a href="${pageContext.request.contextPath}/logout" id="startPage"><strong>로그아웃</strong></a>
        </c:otherwise>
    </c:choose>




</div>
</body>
</html>