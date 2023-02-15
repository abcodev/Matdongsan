<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>커뮤니티 질문게시판</title>
    <jsp:include page="../template/font.jsp"/>
    <%@ include file="../template/header.jsp" %>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardList.css"/>">

</head>
<body>
<main>
    <div id="big">
    <div id="content">
        <div class="side submenu">
            <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
            <a href="${pageContext.request.contextPath}/board/qnaList">질문과 답변</a>
        </div>
        <div class="content head">
        <select name="selectState" id="selectState">
            <option value="">전체</option>
            <c:forEach var="stateList" items="${stateList}">
                <option value="${stateList}">${stateList}</option>
            </c:forEach>
        </select>
            <div class="search_input">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input id="qnaBoardSearch" type="text" placeholder="검색내용을 입력해주세요" value="${condition.search}">
            </div>

            <button onclick="searchState();">조회</button>
            </div>
    <c:if test="${not empty condition.state}">
        <script>
            let condition = document.querySelector(".head select option[value=${state}]");
            condition.selected = true;
        </script>
    </c:if>




    <div class="content body">

            <div class="boardlist">
                <div class="boardlist_head">

                    <button id="writebtn" onclick="movePage2()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
                </div>
                <div id="boardlist_main">
                    <table class="table">
                        <tr>
                            <th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
                        </tr>
                        <c:forEach var="qn" items="${qnaNoticeList}">
                                <tr style="background-color: #fdf0f0">
                                    <td onclick="movePage(${qn.qnaBno})">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-megaphone" viewBox="0 0 16 16">
                                            <path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-.214c-2.162-1.241-4.49-1.843-6.912-2.083l.405 2.712A1 1 0 0 1 5.51 15.1h-.548a1 1 0 0 1-.916-.599l-1.85-3.49a68.14 68.14 0 0 0-.202-.003A2.014 2.014 0 0 1 0 9V7a2.02 2.02 0 0 1 1.992-2.013 74.663 74.663 0 0 0 2.483-.075c3.043-.154 6.148-.849 8.525-2.199V2.5zm1 0v11a.5.5 0 0 0 1 0v-11a.5.5 0 0 0-1 0zm-1 1.35c-2.344 1.205-5.209 1.842-8 2.033v4.233c.18.01.359.022.537.036 2.568.189 5.093.744 7.463 1.993V3.85zm-9 6.215v-4.13a95.09 95.09 0 0 1-1.992.052A1.02 1.02 0 0 0 1 7v2c0 .55.448 1.002 1.006 1.009A60.49 60.49 0 0 1 4 10.065zm-.657.975 1.609 3.037.01.024h.548l-.002-.014-.443-2.966a68.019 68.019 0 0 0-1.722-.082z"/>
                                        </svg> &nbsp;
                                            ${qn.qnaTitle}</td><td>${qn.qnaWriter}</td><td>${qn.qnaDate}</td><td>${qn.count}
                                </td>
                                </tr>
                        </c:forEach>

                        <c:forEach var="qb" items="${qnaBoardList}">
                            <c:if test="${qb.memberNo ne 1}">
                                <c:if test="${qb.blind eq 'N'}">
                                    <tr id="tdBody">
                                        <td onclick="movePage(${qb.qnaBno})">
                                            <c:forEach step="1" begin="2" end ="${qb.depth}">
                                                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            </c:forEach>
                                            <c:if test="${qb.depth ne 1 }">
                                                <i class="bi bi-arrow-return-right"></i>
                                            </c:if>
                                            <c:if test="${qb.qnaArea != null}">
                                                (${qb.qnaArea})
                                            </c:if>
                                            ${qb.qnaTitle}</td><td>${qb.qnaWriter}</td><td>${qb.qnaDate}</td><td>${qb.count}
                                        </td>
                                    </tr>
                                </c:if>


                                <c:if test="${qb.blind eq 'Y'}">
                                    <tr style="background-color: #dddddd" id="tdBody">
                                        <c:if test="${loginUser.memberNo eq 1}">
                                        <td colspan="4" onclick="movePage(${qb.qnaBno})">
                                            </c:if>
                                            <c:if test="${loginUser.memberNo ne 1}">
                                        <td colspan="4" onclick="alert('블라인드 처리된 게시글 입니다.')">
                                            </c:if>
                                            <c:forEach step="1" begin="2" end ="${qb.depth}">
                                                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                            </c:forEach>
                                            <c:if test="${qb.depth ne 1 }">
                                                <i class="bi bi-arrow-return-right"></i>
                                            </c:if>
                                            블라인드 처리된 게시글 입니다.</td>
                                    </tr>
                                </c:if>


                            </c:if>
                        </c:forEach>

                    </table>
                </div>
            </div>
        </div>


    <div id="paging">
        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-link"><</li>
                </c:when>
                <c:otherwise>
                    <li class="page-link" onclick="retrieveQnaBoards(${pi.currentPage - 1})"><</li>
                </c:otherwise>
            </c:choose>
            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <c:choose>
                    <c:when test="${pi.currentPage eq item }">
                        <div class="current">${item }</div>
                    </c:when>
                <c:otherwise>
                <li class="page-item" data-item="${item}" onclick="retrieveQnaBoards(${item}) ">${item }</li>
                </c:otherwise>
                </c:choose>

            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">></a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-link" onclick="retrieveQnaBoards(${pi.currentPage + 1})">></li>
                </c:otherwise>
            </c:choose>
        </ul>

    </div>
    </div>

    </div>
    <script>

        function movePage(qBno){
            location.href = '${pageContext.request.contextPath}/board/detail/'+qBno;
        }

        function movePage2(){
            location.href = '${pageContext.request.contextPath}/board/insert';
        }


        function searchState() {
            $.ajax({
                type: 'GET',
                url: '${pageContext.request.contextPath}/board/qnaList',
                contentType: "application/json; charset=UTF-8",
                data: {
                    'state': $("#selectState").val(),
                    'search': $("#qnaBoardSearch").val()
                },
                dataType: 'html',
                success: function (data) {
                    $('.item').attr("disabled",true);
                    $('#boardlist_main').empty();
                    if($(data).find("#tdBody").length > 0) {
                        $('#boardlist_main').html($(data).find('#boardlist_main'))
                    }else {
                        $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                    }
                    $('#paging').empty();
                    $('#paging').html($(data).find('#paging'))
                }
            })
        }


        function retrieveQnaBoards(current_page,item) {
            $.ajax({
                url: '${pageContext.request.contextPath}/board/qnaList',
                method: 'GET',
                data: {
                    cpage: current_page,
                    state: $("#selectState").val(),
                    search: $("#qnaBoardSearch").val(),
                },
                success(data) {
                    let item = $(this).data('item');

                    $('#boardlist_main').empty();
                    $('.pagination').empty();
                    $('#paging').html($(data).find('.pagination')) ;
                    if($(data).find("#tdBody").length >0) {
                        $('#boardlist_main').html($(data).find('#boardlist_main'))
                    }else{
                        $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                    }
                    $('#paging').empty();
                    $('#paging').html($(data).find('#paging'))
                }
            })
        }
    </script>
</main>
</body>
</html>




