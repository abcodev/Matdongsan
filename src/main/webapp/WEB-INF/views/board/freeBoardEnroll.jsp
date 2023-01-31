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

    <form id="enrollForm" method="post" action="${pageContext.request.contextPath}/board/freeList/insert">
        title : <input type="text" name="boardTitle" required>
        <br>
        <input type="hidden" name="boardWriter" value="${loginUser.nickName}">

        <br>
        <select id="boardArea" name="boardArea">
            <c:forEach var="localList" items="${localList}">
                <option value="${localList}">${localList}</option>
            </c:forEach>
        </select>

        <br><br>

        content : <textarea name="boardContent" id="boardContent" required></textarea>

        <br><br>
        <button type="submit" class="btn btn-primary">등록하기</button>

        <button type="reset"  class="btn btn-danger">취소하기</button>
    </form>

</body>
</html>
