<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>커뮤니티 자유게시판</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardList.css"/>">
    <jsp:include page="../template/font.jsp"/>
    <%@ include file="../template/header.jsp" %>

</head>
<body>
<body>
<div id="content">
    <div class="side submenu">
        <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
        <a href="${pageContext.request.contextPath}/board/qnaList">질문과 답변</a>
    </div>
    <div class="side best">
        <p><i class="fa-solid fa-crown"></i>주간인기글 BEST 3</p>
        <c:forEach items="${hotWeekList}" var="hotWeekList" varStatus="status">
            <a href="${pageContext.request.contextPath}/board/freeList/detail/${hotWeekList.freeBno}">${status.count}. ${hotWeekList.boardTitle}</a>
        </c:forEach>
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
            <input id="freeBoardSearch" type="text" placeholder="검색내용을 입력해주세요" value="${condition.search}">
        </div>
        <button onclick="searchState();">조회</button>
    </div>
    <c:if test="${not empty condition.state }">
        <script>
            let condition = document.querySelector(".head select option[value=${state}]");
            condition.selected = true;
        </script>
    </c:if>

    <div class="content body">
        <div class="boardlist_area">
            <div id="boardlist_top">
                <div id="listset">
                    <input type="checkbox" name="arrayList" id="view" value="view"><label for="view">조회수 많은 순</label>
                    <input type="checkbox" name="arrayList" id="reply" value="reply"><label for="reply">댓글 많은 순</label>
                    <input type="checkbox" name="arrayList" id="recent" value="recent"><label for="recent">최신순</label>
                </div>
                <div id="writebtn">
                    <button onclick="movePage()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
                </div>
            </div>
            <div id="boardlist_main">
                <c:if test="${not empty freeBoardList}">
                    <c:forEach items="${freeBoardList}" var="freeBoard" varStatus="status">
                        <c:if test="${freeBoard.memberNo ne 1}">
                            <c:if test="${reportList[status.index] ne freeBoard.boardNo}">
                                <div class="boardlist">
                                    <p style="display: none">${freeBoard.boardNo}</p>
                                    <p style="display: none">${freeBoard.memberNo}</p>
                                    <div class="board_title">
                                        <p>${freeBoard.boardTitle}</p>
                                    </div>
                                    <div class="board_content">
                                        <p>${freeBoard.boardContent}</p>
                                    </div>
                                    <div class="board_info">
                                        <p class="info writer">${freeBoard.boardWriter}</p>
                                        <p class="info area">${freeBoard.boardArea}</p>
                                        <p class="info date">${freeBoard.boardDate}</p>
                                        <p class="info view"><i class="fa-regular fa-eye"></i>${freeBoard.count}</p>
                                        <p class="info reply"><i class="fa-regular fa-comment"></i>${freeBoard.replyCount}</p>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${reportList[status.index] eq freeBoard.boardNo}">
                                <div class="boardlist" style="background-color: #dddddd">
                                    <p style="display: none">${freeBoard.boardNo}</p>
                                    <p style="display: none">${freeBoard.memberNo}</p>
                                    <div class="board_title">
                                        <p>블라인드 처리된 게시글 입니다.</p>
                                    </div>
                                    <div class="board_content">
                                        <p>${freeBoard.boardContent}</p>
                                    </div>
                                    <div class="board_info">
                                        <p class="info writer">${freeBoard.boardWriter}</p>
                                        <p class="info area">${freeBoard.boardArea}</p>
                                        <p class="info date">${freeBoard.boardDate}</p>
                                        <p class="info view"><i class="fa-regular fa-eye"></i>${freeBoard.count}</p>
                                        <p class="info reply"><i class="fa-regular fa-comment"></i>${freeBoard.replyCount}</p>
                                    </div>
                                </div>
                            </c:if>

                        </c:if>
                        <c:if test="${freeBoard.memberNo eq 1}">
                            <div class="boardlist" style="background-color: #f2dede">
                                <p style="display: none">${freeBoard.boardNo}</p>
                                <p style="display: none">${freeBoard.memberNo}</p>
                                <div class="board_title">
                                    <p>${freeBoard.boardTitle}</p>
                                </div>
                                <div class="board_content">
                                    <p>${freeBoard.boardContent}</p>
                                </div>
                                <div class="board_info">
                                    <p class="info writer">${freeBoard.boardWriter}</p>
                                    <p class="info area">${freeBoard.boardArea}</p>
                                    <p class="info date">${freeBoard.boardDate}</p>
                                    <p class="info view"><i class="fa-regular fa-eye"></i>${freeBoard.count}</p>
                                    <p class="info reply"><i class="fa-regular fa-comment"></i>${freeBoard.replyCount}</p>
                                </div>
                            </div>
                        </c:if>
                    </c:forEach>
                </c:if>
            </div>
        </div>
    </div>
    <br>
    <div class="paging">
        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-item disabled">Previous</li>
                </c:when>
                <c:otherwise>
                    <li class="page-item" onclick="retrieveFreeBoards(${pi.currentPage - 1})">Previous</li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item" onclick="retrieveFreeBoards(${item})">${item }</li>
            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item" onclick="retrieveFreeBoards(${pi.currentPage + 1})">Next</li>
                </c:otherwise>
            </c:choose>
        </ul>

    </div>
</div>

<script>
    function retrieveFreeBoards(current_page) {
        console.log($("#freeBoardSearch").val());
        console.log($('input[type="checkbox"][name="arrayList"]:checked').val());
        let array = $('input[type="checkbox"][name="arrayList"]:checked').val()
        $.ajax({
            url: '${pageContext.request.contextPath}/board/freeList',
            method: 'GET',
            data: {
                cpage: current_page,
                state: $("#selectState").val(),
                search: $("#freeBoardSearch").val(),
                select: array
            },
            success(data) {
                $('#boardlist_main').empty();
                console.log($(data).find("#boardlist_main"));
                console.log($(data).find(".board_info").length);
                if($(data).find(".board_info").length >0) {
                    $('#boardlist_main').html($(data).find(".boardlist"))
                }else{
                    $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                }
                $('.paging').empty();
                $('.paging').html($(data).find('.paging'))
            }
        })
    }


    function movePage() {
        location.href = '${pageContext.request.contextPath}/board/freeList/enrollForm';
    }

    function searchState() {
        $.ajax({
            type: 'GET',
            url: '${pageContext.request.contextPath}/board/freeList',
            contentType: "application/json; charset=UTF-8",
            data: {
                'state': $("#selectState").val(),
                'search': $("#freeBoardSearch").val()
            },
            dataType: 'html',
            success: function (data) {
                $('#boardlist_main').empty();
                console.log($(data).find("#boardlist_main"));
                console.log($(data).find(".board_info").length);
                if($(data).find(".board_info").length >0) {
                    $('#boardlist_main').html($(data).find(".boardlist"))
                }else{
                    $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                }
                $('input[type="checkbox"][name="arrayList"]').prop("checked",false);
            }
        })
    }

    $('#boardlist_main').on('click', '.boardlist', function(){
        console.log($(this).children('p:eq(0)').html());
        let fno = $(this).children('p:eq(0)').html();
        let member = $(this).children('p:eq(1)').html();
        location.href = '${pageContext.request.contextPath}/board/freeList/detail/'+fno;
    })


    $('input[type="checkbox"][name="arrayList"]').click(function(){
        if($(this).prop('checked')){
            $('input[type="checkbox"][name="arrayList"]').prop('checked',false);
            $(this).prop('checked',true);
            console.log($(this).val());
            let array = $(this).val();
            $.ajax({
                type: 'GET',
                url: '${pageContext.request.contextPath}/board/freeList',
                contentType: "application/json; charset=UTF-8",
                data: {
                    'select' : array,
                    'search' : $("#freeBoardSearch").val(),
                    'state' : $("#selectState").val()
                },
                dataType: 'html',
                success : function (data){
                    $('#boardlist_main').empty();
                    console.log($(data).find("#boardlist_main"));
                    console.log($(data).find(".board_info").length);
                    if($(data).find(".board_info").length >0) {
                        $('#boardlist_main').html($(data).find(".boardlist"))
                    }else{
                        $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                    }
                }
                , fail:function (){
                    console.log("zzzzz");
                }
            })
        }
    })
</script>


</body>
</html>