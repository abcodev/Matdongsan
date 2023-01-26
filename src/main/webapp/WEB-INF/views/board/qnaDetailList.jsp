
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    div{
      border: 1px solid black;
      height: 200px;
    }
  </style>

</head>
<body>
<main>

  <table id="contentArea" class="table">
    <tr>
      <th>제목</th>
      <td colspan="3">${qb.qnaTitle}</td>
    </tr>
    <tr>
      <th>닉네임</th>
      <td colspan="3">${qb.qnaWriter}</td>
    </tr>
    <tr>
      <th width="100">날짜</th>
      <td colspan="3">${qb.qnaDate}</td>
    </tr>
    <tr>
      <th>내용</th>
      <td colspan="3">${qb.qnaContent}</td>
    </tr>
  <input type="hidden" id="depth" value="${qb.depth}"/>
    <input type="hidden" id="parentBno" value="${qb.parentBno}"/>

    <button id="writebtn1" onclick="movePage()"><i class="fa-solid fa-pencil"></i>답글달기</button>
  </table>
  <br><br><br><br><br><br>
  <Div>
    <span>질문 1에 대한 ${ab.qnaTitle}</span><br><br>
    <span>${ab.qnaWriter}</span><br><br><br>
    <span>${ab.qnaContent}</span>

  </Div>
  <script>
    function movePage(){
      location.href = '${pageContext.request.contextPath}/board/insertAnswer/${boardCode}/';
    }
  </script>


</main>
</body>
</html>