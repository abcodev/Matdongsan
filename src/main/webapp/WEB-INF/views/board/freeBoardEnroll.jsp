<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>자유게시판 작성</title>
    <%@ include file="../template/header.jsp" %>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardEnroll.css"/>">
    <script src="<c:url value="./resources/js/summernote-lite.js"/>"></script>
    <script src="<c:url value="./resources/js/summernote-ko-KR.js"/>"></script>
    <link rel="stylesheet" href="<c:url value="/resources/css/summernote/css/summernote-lite.css"/>">
</head>
<body>
<div id="content">
    <div id="board_submenu">자유게시판</div>
    <div class="enroll_form">
    <form id="enrollForm" method="post" action="${pageContext.request.contextPath}/board/freeList/insert">
        <div class="form_head">
            <div class="select_city">
                <c:if test="${loginUser.memberNo ne 1}">
                    <select id="boardArea" name="boardArea">
                        <c:forEach var="localList" items="${localList}">
                            <option value="${localList}">${localList}</option>
                        </c:forEach>
                    </select>
                </c:if>
                <c:if test="${loginUser.memberNo eq 1}">
                    <input type="hidden" name="boardArea">
                </c:if>
            </div>
            <input type="text" name="boardTitle" required placeholder="제목을 입력해주세요" class="board_title">
            <input type="hidden" name="boardWriter" value="${loginUser.nickName}">
            <input type="hidden" name="memberNo" value="${loginUser.memberNo}">
        </div>
        <div class="form_body">
<%--            <textarea id="summernote" name="editordata"></textarea>--%>
        <textarea name="boardContent" id="boardContent" required placeholder="내용을 입력해주세요"></textarea>
        </div>
        <div class="btn_box">
            <button type="submit">게시글 등록</button>
            <button type="reset" onclick="history.back()">취소</button>
        </div>
    </form>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#summernote').summernote({
            height: 300,                 // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
        });
    });
</script>
</body>
</html>
