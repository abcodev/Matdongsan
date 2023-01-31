<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>자유게시판 상세보기</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardDetail.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
                <input type="text" name="boardTitle" value="${fb.boardTitle}">
            </div>
            <div class="board_info">
                <div class="writer_img"><img src="<c:url value="/resources/images/common/맛동산메인로고.png"/>"></div>
                <div class="board_writer" name="boardWriter">${fb.boardWriter}</div>
                <div class="board_date" name="boardDate">${fb.boardDate}</div>
            </div>
        </div>
        <div class="detail_body">
            <div name="boardContent">${fb.boardContent}</div>
        </div>
        <div class="btn_box">
            <button type="submit">수정</button>
            <button type="submit">삭제</button>
        </div>

        <!-- 신고 -->
        <div class="alert_btn_box">
            <button type="button" class="alert_btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
                신고하기
            </button>
        </div>
        <!-- 신고 모달 -->
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <i class="fa-solid fa-person-circle-exclamation"></i>
                        <span>신고사유를 선택해주세요</span>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <select>
                                <option value="">부적절한 게시글</option>
                        </select>
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-bs-dismiss="modal">취소</button>
                        <button type="button" >신고하기</button>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <div class="reply_area">
        <div class="reply_head">
            <i class="fa-regular fa-comments"></i>
            <p>댓글</p>
            <p>(<span id="rcount"></span>)</p>
        </div>
        <div class="reply_body">
            <table>
                <tr>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
        <div class="reply_foot">
            <div>
                <div class="my_img"><img src="<c:url value="/resources/images/common/맛동산메인로고.png"/>"></div>
                <input name="replyContent" type="text">
                <button onclick="insertReply();">댓글 등록</button>
            </div>
        </div>
    </div>
</div>


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
                            + "<td>" + reply.nickName + "</td>"
                            + "<td>" +reply.replyContent + "</td>"
                            + "<td>" +reply.replyDate + "</td>"
                            + "</tr>";
                    }
                    $("#replyArea tbody").html(html);
                    $("#rcount").html(result.length);
                }
            })
        }

        function insertReply(){
            $.ajax({
                url : "${pageContext.request.contextPath}/board/insertReply",
                data: {freeBno : '${fb.boardNo}',
                        replyContent : $('textarea[name="replyContent"]:visible').val()},
                success : function(result){
                            if(result == "1"){
								alertify.alert("서비스 요청 성공", '댓글등록 성공');
							}
							selectReplyList();
                        },
                complete : function(){
							$('textarea[name="replyContent"]').val("");
						}

        })
    }
</script>


</body>
</html>
