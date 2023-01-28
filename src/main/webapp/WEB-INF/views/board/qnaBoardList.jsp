
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<!DOCTYPE html>
<c:if test="${!empty param.condition }">
    <c:set var="sUrl" value="&condition=${param.condition}&keyword=${param.keyword }"/>
</c:if>



<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardList.css"/>">
    <link rel="stylesheet" href="community_2.css">
    <jsp:include page="../template/font.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
</head>
<body>
<main>
    <div class="content head">
        <form id="searchForm" action="search?" method="get">
        <div class="select">
            <select class="custom-select" name="condition">
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="area">지역</option>
            </select>
        </div>
        <div class="search_input">
            <input type="text" name="keyword">
        </div>
        <div class="search_icon">
            <button><i class="fa-solid fa-magnifying-glass"></i></button>
        </div>
        </form>
    </div>
    <div class="content body">
        <div class="sidebar">
            <div>
                <a href="${pageContext.request.contextPath}/board/flist">자유게시판</a>
                <a href="${pageContext.request.contextPath}/board/list">질문과 답변</a>
            </div>
        </div>
        <div class="boardlist">
            <div class="boardlist_head">

                <button id="writebtn" onclick="movePage2()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
            </div>
            <div id="boardlist_main">

                <table class="table">
                    <tr><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th></tr>
                    <c:forEach var="qb" items="${list}">
                        <tr><td onclick="movePage(${qb.qnaBno})">
                            <c:forEach step="1" begin="2" end ="${qb.depth}">
                                <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
                            </c:forEach>
                            <c:if test="${qb.depth ne 1 }">
                                └->
                            </c:if>
                            <c:if test="${qb.qnaArea != null}">
                            (${qb.qnaArea})</c:if>
                                ${qb.qnaTitle}</td><td>${qb.qnaWriter}</td><td>${qb.qnaDate}</td><td>${qb.count}</td></tr>

                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
    <c:set var="url" value="?cpage="/>
        <div id="paging">
            <ul class="pagination">
                <c:choose>
                    <c:when test="${ pi.currentPage eq 1 }">
                        <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="${url }${pi.currentPage -1 }${sUrl}">Previous</a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                    <li class="page-item"><a class="page-link" href="${url }${item }${sUrl}">${item }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${ pi.currentPage eq pi.maxPage }">
                        <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="${url }${pi.currentPage + 1 }${sUrl}">Next</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>


    <script>

        function movePage(qBno){
            location.href = '${pageContext.request.contextPath}/board/detail/'+qBno;
        }

        function movePage2(){
            location.href = '${pageContext.request.contextPath}/board/insert';
        }
    </script>
</main>
</body>
</html>