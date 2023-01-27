

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
      게식글 제목
<input type="text" id="title" name="qnaTitle">
<br><br>

게시글 내용
<textarea id="content" name="qnaContent"></textarea>
<br>
  <select id="area" onchange="qnaArea(this);">

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
<button type="submit" class="btn btn-primary">등록하기</button>

<button type="reset"  class="btn btn-danger">취소하기</button>
</form>
<script>
function qnaArea(){

}
</script>
</body>
</html>
