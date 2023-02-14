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
    <form id="enrollForm" method="post" action="${pageContext.request.contextPath}/board/insert">
      <div class="form_head">
        <input type="hidden" name="qnaWriter" value="${loginUser.nickName}">
        <input type="hidden" name="memberNo" value="${loginUser.memberNo}">
        <div class="select_city">
          <select id="qnaArea" name="qnaArea">
            <c:forEach var="localList" items="${localList}">
              <option value="${localList}">${localList}</option>
            </c:forEach>
          </select>
        </div>
        <input type="text" id="title" name="qnaTitle" required placeholder="제목을 입력해주세요" class="board_title">
      </div>
      <div class="form_body">
        <%--            <textarea id="summernote" name="editordata"></textarea>--%>
        <textarea name="qnaContent"  required placeholder="내용을 입력해주세요"></textarea>
      </div>
      <div class="btn_box">
        <button type="submit">게시글 등록</button>
        <button type="reset" onclick="history.back()">취소</button>
      </div>
    </form>
  </div>
</div>
</form>

</body>
</html>
