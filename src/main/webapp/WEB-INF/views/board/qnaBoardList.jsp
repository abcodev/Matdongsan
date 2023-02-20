<%@ page language="java" pageEncoding="UTF-8" %>
<html lang="en">
<!DOCTYPE html>
<html lang="en">
<head>
    <title>커뮤니티 질문게시판</title>
    <%@ include file="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
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
                        <c:if test="${not empty loginUser}">
                            <button id="writebtn" onclick="movePage2()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
                        </c:if>
                    </div>
                    <div id="boardlist_main">
                        <table class="table">
                            <tr>
                                <th>제목</th>
                                <th>작성자</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                            <c:forEach var="qn" items="${qnaNoticeList}">
                                <tr class="notice">
                                    <td onclick="movePage(${qn.qnaBno})">
                                        <i class="fa-solid fa-bullhorn"></i><span>공지사항</span>
                                            ${qn.qnaTitle}</td>
                                    <td>${qn.qnaWriter}</td>
                                    <td>${fn:substring(qn.qnaDate, 0, 16)}</td>
                                    <td>${qn.count}
                                    </td>
                                </tr>
                            </c:forEach>

                            <c:if test="${not empty qnaBoardList}">
                                <c:forEach var="qb" items="${qnaBoardList}">
                                    <c:if test="${qb.blind eq 'N'}">
                                        <tr class="tdBody">
                                            <td onclick="movePage(${qb.qnaBno})">
                                                <c:forEach step="1" begin="2" end="${qb.depth}">
                                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                </c:forEach>
                                                <c:if test="${qb.depth ne 1 }">
                                                    <i class="fa-solid fa-turn-up"></i>
                                                </c:if>
                                                <c:if test="${qb.qnaArea != null}">
                                                    <span class="qna_area">[${qb.qnaArea}]</span>
                                                </c:if>${qb.qnaTitle}
                                            </td>
                                            <td>${qb.qnaWriter}</td>
                                            <td>${fn:substring(qb.qnaDate, 0, 16)}</td>
                                            <td>${qb.count}</td>
                                        </tr>
                                    </c:if>
                                    <c:if test="${qb.blind eq 'Y'}">
                                        <tr class="tdBody blind" >
                                            <td colspan="4" onclick="Swal.fire('블라인드 처리된 게시글 입니다.')">
                                                <c:forEach step="1" begin="2" end="${qb.depth}">
                                                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                                </c:forEach>
                                                <c:if test="${qb.depth ne 1 }">
                                                    <i class="fa-solid fa-turn-up"></i>
                                                </c:if>
                                                블라인드 처리된 게시글 입니다.
                                            </td>
                                        </tr>
                                    </c:if>

                                </c:forEach>
                            </c:if>
                            <c:if test="${empty qnaBoardList}">
                                <tr>
                                    <td>조회된 게시글이 없습니다.</td>
                                </tr>
                            </c:if>
                        </table>
                    </div>
                </div>
            </div>


            <div id="paging">
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <c:choose>
                            <c:when test="${ pi.currentPage eq 1 }">
                                <li class="page-item disabled"><a class="page-link" href="#">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item"><a class="page-link"
                                                         onclick="retrieveQnaBoards(${pi.currentPage - 1})">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                                </li>
                            </c:otherwise>
                        </c:choose>

                        <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                            <li class="page-item"><a class="page-link" onclick="retrieveQnaBoards(${item})">${item }</a>
                            </li>
                        </c:forEach>

                        <c:choose>
                            <c:when test="${ pi.currentPage eq pi.maxPage }">
                                <li class="page-item disabled"><a class="page-link" href="#">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item"><a class="page-link"
                                                         onclick="retrieveQnaBoards(${pi.currentPage + 1})">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </nav>
            </div>


        </div>

    </div>
    <script>

        function movePage(qBno) {
            location.href = '${pageContext.request.contextPath}/board/detail/' + qBno;
        }

        function movePage2() {
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
                    //$('#boardlist_main').empty();
                    if ($(data).find(".tdBody").length > 0) {
                        $('#boardlist_main').html($(data).find('#boardlist_main'))
                    } else {
                        $('.tdBody').remove();
                        $('.table').append('<tr class="tdBody"></tr>');
                        $('.tdBody').html('<td colspan="4">조회된 게시글이 없습니다.</td>');
                    }
                    $('#paging').empty();
                    $('#paging').html($(data).find('#paging'))
                }
            })
        }

        function retrieveQnaBoards(current_page, item) {
            $.ajax({
                url: '${pageContext.request.contextPath}/board/qnaList',
                method: 'GET',
                data: {
                    cpage: current_page,
                    state: $("#selectState").val(),
                    search: $("#qnaBoardSearch").val(),
                },
                success(data) {
                    $(".page-item").on('click', function () {
                        if ($(item).val() === $(current_page).val()) {
                            $(this).prop('disabled', true);
                        }
                    });

                    $('#boardlist_main').empty();
                    $('.pagination').empty();
                    $('#paging').html($(data).find('.pagination'));
                    if ($(data).find(".tdBody").length > 0) {
                        $('#boardlist_main').html($(data).find('#boardlist_main'))
                    } else {
                        $('#boardlist_main').html('<p>조회된 게시글이 없습니다아아아아아아아아아.</p>');
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




