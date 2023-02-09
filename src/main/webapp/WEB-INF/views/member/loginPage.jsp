<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/member/loginPage.css"/>">

    <jsp:include page="../template/font.jsp"/>
    <%@ include file ="../template/header.jsp" %>

</head>
<body>
<div id="content">
    <div id="login_head">
        <h2>회원 소셜로그인</h2>
    </div>
    <div id="login_body">
        <div class="login kakao">
            <a href="<c:url value="/login/kakao"/>">
                <img src="<c:url value="/resources/images/oauth/카카오이미지.png"/>">
            </a>
        </div>
        <div class="login naver">
            <a href="<c:url value="/login/naver"/> ">
                <img src="<c:url value="/resources/images/oauth/네이버로그인.png"/>">
            </a>
        </div>
        <div class=" login google">
            <a href="<c:url value="/login/google"/> ">
                <img src="<c:url value="/resources/images/oauth/구글로그인.png"/>">
            </a>
        </div>
    </div>
</div>
</body>
</html>