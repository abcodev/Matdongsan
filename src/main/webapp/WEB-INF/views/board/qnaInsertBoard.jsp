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
        <div class="select_city">
          <input type="hidden" name="qnaWriter" value="${loginUser.nickName}">
          <input type="hidden" name="memberNo" value="${loginUser.memberNo}">
          <select id="qnaArea" name="qnaArea">
            <option value="강남구">강남구</option>
            <option value="서초구">서초구</option>
            <option value="은평구">은평구</option>
            <option value="도봉구">도봉구</option>
            <option value="노원구">노원구</option>
            <option value="강북구">강북구</option>
            <option value="강동구">강동구</option>
            <option value="강서구">강서구</option>
            <option value="관악구">관악구</option>
            <option value="광진구">광진구</option>
            <option value="구로구">구로구</option>
            <option value="금천구">금천구</option>
            <option value="동대문구">동대문구</option>
            <option value="동작구">동작구</option>
            <option value="마포구">마포구</option>
            <option value="서대문구">서대문구</option>
            <option value="성동구">성동구</option>
            <option value="성북구">성북구</option>
            <option value="송파구">송파구</option>
            <option value="양천구">양천구</option>
            <option value="영등포구">영등포구</option>
            <option value="용산구">용산구</option>
            <option value="종로구">종로구</option>
            <option value="중구">중구</option>
            <option value="중랑구">중랑구</option>
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
<script>
  let qnaArea = document.getElementById("qnaArea");

</script>
</body>
</html>
