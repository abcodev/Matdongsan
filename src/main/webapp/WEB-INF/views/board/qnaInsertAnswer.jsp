<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <title>자유게시판 작성</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardEnroll.css"/>">
  <jsp:include page="../template/font.jsp"/>
  <script src="<c:url value="./resources/js/summernote-lite.js"/>"></script>
  <script src="<c:url value="./resources/js/summernote-ko-KR.js"/>"></script>
  <link rel="stylesheet" href="<c:url value="/resources/css/summernote/css/summernote-lite.css"/>">

</head>
<body>
<%@ include file ="../template/header.jsp" %>
<div id="content">
  <div id="board_submenu">질문게시판</div>
  <div class="enroll_form">
    <form id="insertAnswer" method="post" action="${pageContext.request.contextPath}/board/insertAnswer">
      <div class="form_head">

        <input type="text" id="title" name="qnaTitle" required placeholder="답글 제목을 입력해주세요" class="board_title">
      </div>
      <div class="form_body">

        <textarea name="qnaContent"  required placeholder="답글을 입력해주세요"></textarea>
      </div>
      <div class="btn_box">
        <button type="submit">답글 등록</button>
        <button type="reset" onclick="history.back()">취소</button>
      </div>
      <input type="hidden" id="depth" name="depth" value="${depth}">
      <input type="hidden" id="pBno" name="pBno" value="${pBno}">
      <input type="hidden" id="qBno" name="qBno" value="${qBno}">
    </form>
  </div>
</div>
</form>
<script>
  let qnaArea = document.getElementById("qnaArea");

</script>
</body>
</html>
