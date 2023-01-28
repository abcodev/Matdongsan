<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/member/memberModify.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
    <div id="userimg">
        <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
    </div>
    <form action="${pageContext.request.contextPath}/updateMember" method="post">
        <div class="form">
            <input type="hidden" id="memberNo" name="memberNo" value="${loginUser.memberNo}">
            <div class="userinfo nickName">
                <h3>닉네임</h3>
                <input type="text" id="nickName" name="nickName" value="${loginUser.nickName}">
                <button>중복검사</button>
            </div>
            <div class="userinfo email">
                <h3>이메일</h3>
                <input type="text" id="email" name="email" value="${loginUser.email}">
            </div>
            <div class="userinfo phone">
                <h3>휴대폰번호</h3>
                <input type="text" id="phone" name="phone" value="${loginUser.phone}">
                <button>인증</button>
            </div>
            <div class="userinfo adressNum">
                <h3>우편번호</h3>
                <input type="text">
                <button>검색</button>
            </div>
            <div class="userinfo address">
                <h3>주소</h3>
                <input type="text" id="address" name="address" value="${loginUser.address}">
            </div>
            <div class="btn_box">
                <button>취소</button>
                <button>수정</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>