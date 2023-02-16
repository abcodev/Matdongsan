<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <title>자유게시판 작성</title>
  <%@ include file ="../template/header.jsp" %>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardEnroll.css"/>">
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
          <c:if test="${loginUser.memberNo ne 1}">
            <select id="qnaArea" name="qnaArea">
              <c:forEach var="localList" items="${localList}">
                <option value="${localList}">${localList}</option>
              </c:forEach>
            </select>
          </c:if>
          <c:if test="${loginUser.memberNo eq 1}">
            <input type="hidden" name="qnaArea">
          </c:if>
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
