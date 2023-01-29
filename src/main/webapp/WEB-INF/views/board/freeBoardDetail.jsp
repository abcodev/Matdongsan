<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>자유게시판</h2>
    <input type="hidden" name="fno" value="${fb.boardNo}">
    <input type="text" name="boardTitle" value="${fb.boardTitle}"> <br>
    <input type="text" name="boardWriter" value="${fb.boardWriter}" readonly> <br>
    <input type="text" name="boardDate" value="${fb.boardDate}" readonly> <br>

    <input type="text" name="boardArea" value="${fb.boardArea}" readonly> <br>

    <textarea name="boardContent">${fb.boardContent}</textarea> <br><br>

    <button type="submit">수정하기</button>
    <button type="submit">삭제하기</button>

    <br><br>

    댓글 : <input type="text">
    <button type="submit">댓글 등록</button>
</body>
</html>
