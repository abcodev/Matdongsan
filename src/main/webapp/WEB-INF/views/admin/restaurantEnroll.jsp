<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-19
  Time: 오후 8:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <jsp:include page="../template/font.jsp"></jsp:include>
</head>
<body>
<div id="content">
  <div class="res name">
    <h3>가게이름</h3>
    <input type="text">
  </div>
  <div class="res address">
    <h3>주소</h3>
    <input type="text">
  </div>
  <div class="res phone">
    <h3>번호</h3>
    <input type="text">
  </div>
  <div class="res menu">
    <h3>메뉴</h3>
    <input type="text">
  </div>
  <div class="res address">
    <h3>주소</h3>
    <input type="text">
  </div>
  <div class="place hashtag">
    <c:forEach items="${}" var="hashtag" varStatus="i">
      <input type="checkbox" class="btn-check" id="btn-check-outlined${}" name="chk_hashtag" autocomplete="off" value="${}" onchange="retrieveRestaurants(1)">
      <label class="btn btn-outline-secondary" for="btn-check-outlined${}">${}</label>
    </c:forEach>
  </div>
  <div class="res img">
    <input class="form-control form-control-sm" id="formFileSm" type="file">
  </div>
  <div class="btn_box">
    <button>취소</button>
    <button>등록</button>
  </div>
</div>
</body>
</html>