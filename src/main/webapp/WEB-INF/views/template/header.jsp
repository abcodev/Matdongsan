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
          <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a></button>
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
          <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/admin/chat">1:1문의</a></button>
        </div>
      </div>
    </nav>

    <div class="login">

      <c:choose>
        <c:when test="${ empty loginUser}">
          <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
        </c:when>
        <c:otherwise>
          <label>
            <img src="${loginUser.profileImage}" width="50px">
              ${loginUser.memberName} 님 환영합니다.
          </label> &nbsp;&nbsp;
          <%--                    <a href="${pageContext.request.contextPath}/myPage">마이페이지</a>--%>
          <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
        </c:otherwise>
      </c:choose>
    </div>
  </div>
</header>
  <script>
    const header = document.querySelector('#header');

    function scrollFunc() {
      if (pageYOffset >= 1) {
        header.classList.add('on');
      } else {
        header.classList.remove('on');
      }
    }
    window.addEventListener('scroll', scrollFunc);
  </script>
</body>
</html>
