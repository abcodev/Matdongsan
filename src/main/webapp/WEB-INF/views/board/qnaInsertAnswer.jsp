<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-23
  Time: 오후 8:12
  To change this template use File | Settings | File Templates.

--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>

<html>
<head>

</head>
<body>
<title></title>
<form id="insertAnswer" method="post" action="${pageContext.request.contextPath}/board/insertAnswer/${boardCode }">
  답글 제목
  <input type="text" id="title" name="qnaTitle">
  <br><br>

  답글 내용
  <textarea id="content" name="qnaContent"></textarea>
  <input type="hidden" name="parentBno" value="${qb.parentBno}"/>
  <input type="hidden" name="depth" value="${qb.depth}"/>
  <input type="hidden" name="qnaBno" value="${qb.qnaBno}"/>
  <br>
  <button type="submit" class="btn btn-primary">등록하기</button>

  <button type="reset"  class="btn btn-danger">취소하기</button>
</form>
</body>
</html>
