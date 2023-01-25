<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-19
  Time: 오후 9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/common/header.css"/>">
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
</head>
<body>

<header id="header">
  <div class="inner">
    <div class="logo">
      <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
    </div>
    <nav class="navbar">
      <div class="navbar_menu">
        <div class="dropdown">
          <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate/list">부동산</a>
          </button>
        </div>

        <div class="dropdown">
          <button class="dropdown-btn">
            <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
          </button>
        </div>

        <div class="dropdown">
          <button class="dropdown-btn"><a href="">커뮤니티</a></button>
          <div class="dropdown-submenu">
            <a href="${pageContext.request.contextPath}/board/list/Q">자유게시판</a>

            <a href="${pageContext.request.contextPath}/board/list/C">질문&답변</a>

          </div>
        </div>
        <div class="dropdown">
          <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/admin/chat">1:1문의</a>
          </button>
        </div>
      </div>
    </nav>
    <div class="login">
      <c:choose>
        <c:when test="${ empty loginUser}">
          <div class="login_before">
            <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
          </div>
        </c:when>
        <c:otherwise>
          <div class="login_after">
            <img src="${loginUser.profileImage}" class="user_img">
            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
            <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
            <i class="fa-regular fa-bell"></i>
          </div>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</header>
</body>
</html>
