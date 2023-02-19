<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>로그인 페이지</title>
    <%@ include file ="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/member/loginPage.css"/>">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<div id="content">
    <div id="login_head">
        <h2>소셜 로그인</h2>
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