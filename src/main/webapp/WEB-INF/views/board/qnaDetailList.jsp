
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>

</head>
<body>
<main>

<table id="contentArea" class="table">
  <tr>
    <th width="100">제목</th>
    <td colspan="3">${qb.qnaTitle}</td>
  </tr>
  <tr>
    <th>내용</th>
    <td colspan="3">${qb.qnaContent}</td>
  </tr>

  <button id="writebtn1" onclick="movePage()"><i class="fa-solid fa-pencil"></i>답글달기</button>
</table>
  <script>
    function movePage(){
      location.href = '${pageContext.request.contextPath}/board/insertAnswer/${boardCode}/';
    }
  </script>


</main>
</body>
</html>