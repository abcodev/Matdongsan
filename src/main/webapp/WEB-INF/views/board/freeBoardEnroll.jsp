<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
</head>
<body>

    <h2>자유게시판</h2>

    <form id="enrollForm" method="post" action="${pageContext.request.contextPath}/board/fInsert/F">
        title : <input type="text" name="boardTitle">
        <br>
        <input type="hidden" name="boardWriter" value="${loginUser.memberName}">

        <br>
        <select id="boardArea" name="boardArea">
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

        <br><br>

        content : <textarea name="boardContent" id="boardContent"></textarea>

        <br><br>
        <button type="submit" class="btn btn-primary">등록하기</button>

        <button type="reset"  class="btn btn-danger">취소하기</button>
    </form>

</body>
</html>
