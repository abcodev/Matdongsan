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
<%--    <link href="../../resources/css/startPage.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/startPage.css"/>">
</head>
<body>
<div id="bgd"></div>
<div id="content" class="container-max">
    <h1>맛동산</h1>
    <p>정확한 실거래가와 맛집 & 동네정보까지 한번에!</p>
    <a href="${pageContext.request.contextPath}/" id="startPage"><strong>start here</strong></a>
    <a href="login.html" id="startPage"><strong>로그인</strong></a>
</div>
</body>
</html>