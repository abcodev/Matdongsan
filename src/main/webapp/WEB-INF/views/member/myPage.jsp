<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <title>마이페이지</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/member/myPage.css"/>">
  <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
  <div id="info_box">
    <div id="userimg">
      <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
    </div>
    <div id="userInfo">
      <table></table>
    </div>
    <div id="btn_box">
      <button>회원탈퇴</button>
<%--      <a href="${pageContext.request.contextPath}/memberModify">정보수정</a>--%>
    </div>
  </div>
  <div id="like">
    <h4>내가 찜한 목록</h4>
    <div id="likeList">
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
    </div>
  </div>
  <div id="myBoard">
    <h4>내 게시글 보기</h4>
    <div id="myBoardList">
      <a href="${pageContext.request.contextPath}/memberModify">정보수정</a>
      <table></table>
    </div>
  </div>
  <div id="paging">

  </div>
</div>
</body>
</html>