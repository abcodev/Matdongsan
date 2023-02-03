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
</head>
<body>
<%@ include file="../template/header.jsp" %>
<body>
<div id="content">
    <div class="side submenu">
        <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
        <a href="${pageContext.request.contextPath}/board/qnaList">질문과 답변</a>
    </div>
    <div class="side best">
        <p><i class="fa-solid fa-crown"></i>주간인기글 BEST 3</p>
        <a href="">1번 인기게시글</a>
        <a href="">2번 인기게시글</a>
        <a href="">3번 인기게시글</a>
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
            <input id="freeBoardSearch" type="text" placeholder="검색내용을 입력해주세요">
        </div>
        <button onclick="searchState();">조회</button>
    </div>
    <div class="content body">
        <div class="boardlist_area">
            <div id="boardlist_top">
                <div id="listset">
                    <input type="checkbox" name="arrayList" id="view" value="view"><label for="view">조회수 많은 순</label>
                    <input type="checkbox" name="arrayList" id="reply" value="reply"><label for="reply">댓글 많은 순</label>
                    <input type="checkbox" name="arrayList" id="recent" value="recent"><label for="recent">최신순</label>
                </div>
                <script>
                    $('input[type="checkbox"][name="arrayList"]').click(function(){
                        if($(this).prop('checked')){
                            $('input[type="checkbox"][name="arrayList"]').prop('checked',false);
                            $(this).prop('checked',true);
                            console.log($(this).html());
                            console.log($(this).val());
                            let array = $(this).val();

                            $.ajax({
                                url : '${pageContext.request.contextPath}/select/arrayList',
                                contentType: "application/json; charset=UTF-8",
                                data: {
                                    'select' : array
                                },
                                dataType: 'html',
                                success : function (){

                                }
                            })


                        }
                    })
                </script>
                <div id="writebtn">
                    <button onclick="movePage()"><i class="fa-solid fa-pencil"></i>글작성하기</button>
                </div>
            </div>
            <div id="boardlist_main">
                <c:if test="${not empty freeBoardList}">
                    <c:forEach items="${freeBoardList}" var="freeBoardList">
                        <div class="boardlist">
                            <p style="display: none">${freeBoardList.boardNo}</p>
                            <p style="display: none">${freeBoardList.memberNo}</p>
                            <div class="board_title">
                                <p>${freeBoardList.boardTitle}</p>
                            </div>
                            <div class="board_content">
                                <p>${freeBoardList.boardContent}</p>
                            </div>
                            <div class="board_info">
                                <p class="info writer">${freeBoardList.boardWriter}</p>
                                <p class="info area">${freeBoardList.boardArea}</p>
                                <p class="info date">${freeBoardList.boardDate}</p>
                                <p class="info view"><i class="fa-regular fa-eye"></i>조회수</p>
                                <p class="info reply"><i class="fa-regular fa-comment"></i>댓글수</p>
                            </div>
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </div>
    </div>
    <div class="paging">

    </div>
</div>

<script>
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
                    $('#boardlist_main').html($(data).find("#boardlist_main"))
                }else{
                    $('#boardlist_main').html('<p>조회된 게시글이 없습니다.</p>');
                }

            }
        })
    }


    $('.boardlist').click(function (){
        console.log($(this).children('p:eq(0)').html());
        let fno = $(this).children('p:eq(0)').html();
        let member = $(this).children('p:eq(1)').html();
        location.href = '${pageContext.request.contextPath}/board/freeList/detail/'+fno;
    })
</script>


</body>
</html>