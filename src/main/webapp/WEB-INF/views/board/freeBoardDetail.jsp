<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="w" value="${fb.boardWriter}"/>
<html>
<head>
    <title>자유게시판 상세보기</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardDetail.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>
<body>

<%@ include file="../template/header.jsp" %>

<div id="content">
    <div class="freeBoard_Detail">
        <div class="detail_top">
            <p>자유게시판</p>
            <input type="hidden" name="fno" value="${fb.boardNo}">
            <div class="board_area" name="boardArea">${fb.boardArea}</div>
        </div>
        <div class="detail_head">
            <div class="board_title">
                    <c:if test="${w eq loginUser.nickName}">
                        <input type="text" name="boardTitle" value="${fb.boardTitle}">
                    </c:if>
                    <c:if test="${w ne loginUser.nickName}">
                        <input type="text" name="boardTitle" value="${fb.boardTitle}" readonly>
                    </c:if>
            </div>
            <div class="board_info">
                <div class="writer_img">
                    <img src="${fb.profileImage}">
                </div>
                <div class="board_writer" name="boardWriter">${fb.boardWriter}</div>
                <div class="board_date" name="boardDate">${fb.boardDate}</div>
            </div>
        </div>
        <div class="detail_body">
            <div name="boardContent">${fb.boardContent}</div>
        </div>
        <div class="btn_box">
                <c:if test="${not empty loginUser}">
                    <c:if test="${w eq loginUser.nickName}">
                        <button type="submit">수정</button>
                        <button onclick="deletePost();">삭제</button>
                    </c:if>
                    <c:if test="${w ne loginUser.nickName}">
                        <button type="submit">신고하기</button>
                    </c:if>
                </c:if>
        </div>
    </div>
    <div class="reply_area">
        <div class="reply_head">
            <i class="fa-regular fa-comments"></i>
            <p>댓글</p>
            <p>댓글수 (<span id="rcount"></span>) </p>
        </div>
        <div class="reply_body">
            <table id="replyResult">

            </table>
        </div>
        <div class="reply_foot">
            <div>
                <div class="my_img">
                    <img src="${loginUser.profileImage}">
                </div>
                <input name="replyContent" type="text">
                <button onclick="insertReply();">댓글 등록</button>
            </div>
        </div>
    </div>
</div>


<!-- 게시글 삭제 -->
<script>
    function deletePost(){
        let fno = $('input[name=fno]').val();

        location.href = "${pageContext.request.contextPath}/board/freeList/deletePost=" + fno;
    }
</script>

<!-- 댓글 등록 -->
<script>


        $(function(){
            selectReplyList();
        });

        function selectReplyList(){
            $.ajax({
                url : '${pageContext.request.contextPath}/board/replyList',
                data : {fno : '${fb.boardNo}'},
                dataType : 'json',
                success : function(result){
                    console.log(result);
                    let html = ""
                    for(let reply of result){
                        html += "<tr>"
                            + "<td><img src=" + reply.profileImage + "></td>"
                            + "<td>" + reply.nickName + "</td>"
                            + "<td>" + reply.replyContent + "</td>"
                            + "<td>" + reply.replyDate + "</td>"
                            + "</tr>";
                    }
                    $("#replyResult").html(html);
                    $("#rcount").html(result.length);
                }
            })
        }

        function insertReply(){
            $.ajax({
                url : "${pageContext.request.contextPath}/board/insertReply",
                data: {freeBno : '${fb.boardNo}',
                        replyContent : $('input[name="replyContent"]:visible').val()},
                success : function(result){
                            if(result == "1"){
								alertify.alert("서비스 요청 성공", '댓글등록 성공');
							}
							selectReplyList();
                        },
                complete : function(){
							$('input[name="replyContent"]').val("");
						}

        })
    }
</script>


</body>
</html>
