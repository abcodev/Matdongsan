<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>

</head>
<body>
<form id="insert" method="post" action="${pageContext.request.contextPath}/board/insert/${boardCode }">
      게시글 제목
<input type="text" id="title" name="qnaTitle">
<br><br>

게시글 내용
<textarea id="content" name="qnaContent"></textarea>
<br>
<button type="submit" class="btn btn-primary">등록하기</button>

<button type="reset"  class="btn btn-danger">취소하기</button>
</form>
</body>
</html>
