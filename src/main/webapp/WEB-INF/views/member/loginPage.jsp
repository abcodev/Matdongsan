<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</head>
<body>
<div id="content">
    <div id="login_head">
        <h2>소셜로그인</h2>
    </div>
    <div id="login_body">

        <a href="https://kauth.kakao.com/oauth/authorize?client_id=857210a016a83ceffadc50f61d649c7b&redirect_uri=http://localhost:8070/Matdongsan/login&response_type=code">
            <img src="<c:url value="/resources/images/oauth/kakao_login_medium_wide.png"/>">
        </a>
        <br>
        <a href="${naverUrl}">네이버</a>
        <button>구글</button>
    </div>
</div>
</body>
</html>