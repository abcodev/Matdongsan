<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>자유게시판 상세보기</title>
    <%@ include file="../template/header.jsp" %>
    <link rel="stylesheet" href="<c:url value="/resources/css/board/freeBoardDetail.css"/>">
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <c:set var="w" value="${fb.memberNo}"/>
</head>
<body>
<div id="content">
    <div class="freeBoard_Detail">
        <div class="detail_top">
            <p>자유게시판</p>
            <input type="hidden" name="fno" value="${fb.boardNo}">
            <div class="board_area" name="boardArea">${fb.boardArea}</div>
        </div>
        <div class="detail_head">
            <div class="board_title">
                <c:if test="${w eq loginUser.memberNo}">
                    <input type="text" name="boardTitle" value="${fb.boardTitle}" maxlength="70" oninput="handleInputLength(this, 70)">
                </c:if>
                <c:if test="${w ne loginUser.memberNo}">
                    <input type="text" name="boardTitle" value="${fb.boardTitle}" disabled style="background-color: white">
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
            <c:if test="${w eq loginUser.memberNo}">
                <textarea name="boardContent">${fb.boardContent}</textarea>
            </c:if>
            <c:if test="${w ne loginUser.memberNo}">
                <div name="boardContent">${fb.boardContent}</div>
            </c:if>
        </div>
        <div class="btn_box">
            <c:if test="${not empty loginUser}">
                <c:if test="${w eq loginUser.memberNo}">
                    <button onclick="updatePost();">수정</button>
                    <button onclick="deletePost();">삭제</button>
                </c:if>
                <c:if test="${w ne loginUser.memberNo}">
                    <c:if test="${w ne 1}">
                        <div class="alert_btn_box">
                            <button type="button" class="alert_btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                신고하기
                            </button>
                        </div>
                    </c:if>
                </c:if>
            </c:if>
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
                        <select name="reportContent" id="reportContent">
                            <option value="욕설">지나친 욕설과 비방 내용이 포함되어 있습니다.</option>
                            <option value="부적절">게시글에 유해하고 부적절한 내용이 포함되어 있습니다.</option>
                            <option value="도배">게시글을 도배하고 있습니다.</option>
                            <option value="광고">불법적인 광고를 하고있습니다.</option>
                        </select>
                        <input type="hidden" name="reporter" value="${loginUser.memberNo}">
                        <input type="hidden" name="reportFno" value="${fb.boardNo}">
                        <input type="hidden" name="reportedPerson" value="${fb.memberNo}">
                    </div>
                    <div class="modal-footer">
                        <button type="button" data-bs-dismiss="modal">취소</button>
                        <button onclick="declaration();" >신고하기</button>
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
            <div id="replyResult">

            </div>
        </div>
        <div class="reply_foot">
            <div>
                <c:choose>
                    <c:when test="${not empty loginUser}">
                        <div class="my_img">
                            <img src="${loginUser.profileImage}">
                        </div>
                        <input name="replyContent" type="text" placeholder="댓글을 작성해주세요">
                        <button onclick="insertReply();">댓글 등록</button>
                    </c:when>
                    <c:otherwise>
                        <div class="my_img">
                            <img src="https://cdn-icons-png.flaticon.com/512/4675/4675250.png">
                                <%--                            <img src="https://cdn-icons-png.flaticon.com/512/7155/7155292.png">--%>
                        </div>
                        <input name="replyContent" type="text" disabled placeholder="로그인 후 이용이 가능합니다.">
                        <button onclick="insertReply();" disabled>댓글 등록</button>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</div>


<script>
    <!-- 게시글 수정 -->
    function updatePost(){
        let boardTitle = $('input[name="boardTitle"]').val();
        let boardContent = $('textarea[name="boardContent"]').val();
        let boardNo = $('input[name="fno"]').val();
        let formData = new FormData();
        formData.append("boardTitle", boardTitle);
        formData.append("boardContent", boardContent);
        formData.append("boardNo", boardNo);

        //ajax로 파일전송 폼데이터를 보내기위해
        //enctype, processData, contentType 이 세가지를 반드시 세팅해야한다.
        $.ajax({
            url : '${pageContext.request.contextPath}/board/update',
            enctype: 'multipart/form-data',
            processData: false,
            contentType: false,
            data : formData,
            type : "post",
            success : function (){
                Swal.fire({
                    icon: 'success',
                    title: "수정에 성공하였습니다."
                }).then(()=>{
                    location.href = "${pageContext.request.contextPath}/board/freeList/detail/" + boardNo;
                })
            },
            error : function (){
                Swal.fire({
                    icon: 'error',
                    title: "수정에 실패하였습니다."
                })
            },
        });
    }

    function handleInputLength(el, max) {
        if(el.value.length > max) {
            el.value = el.value.substr(0, max);
        }
    }

    <!-- 게시글 삭제 -->
    function deletePost(){
        let fno = $('input[name=fno]').val();

        location.href = "${pageContext.request.contextPath}/board/freeList/deletePost=" + fno;
    }

    <!-- 댓글 등록 & 리스트 보여주기 -->
    $(function(){
        selectReplyList();
    });

    function selectReplyList(){
        $.ajax({
            url : '${pageContext.request.contextPath}/board/replyList',
            data : {fno : '${fb.boardNo}'},
            dataType : 'json',
            success : function(result){
                let html = ""
                for(let reply of result){
                    html += '<div class="reply_detail">'
                        + '<div class="reply_info">'
                        + '<div><img src=' + reply.profileImage + '></div>'
                        + '<div>' + reply.nickName + "<input type='hidden' name='replyNo' value=" + reply.replyNo + '></div>'
                        + '<div>' + moment(reply.replyDate).format("YYYY-MM-DD HH:mm") + "<input type='hidden' name='replyWriter' value="+ reply.memberNo +'></div>'
                        + '<div>' + ((reply.memberNo == '${loginUser.memberNo}' ? "<button onclick='deleteReply(this);'>x</button>":"")) + '</div>'
                        + '</div>'
                        + '<div class="reply_content">' + reply.replyContent + '</div>'
                        + '</div>';
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
            success : function(){
                selectReplyList();
            },
            complete : function(){
                $('input[name="replyContent"]').val("");
            }

        })
    }

    <!-- 댓글 삭제 -->
    function deleteReply(button){

        let replyNo = $(button).parent().parent().find("[name='replyNo']").val();

        $.ajax({
            url : "${pageContext.request.contextPath}/board/deleteReply",
            type : "post",
            data : {freeBno : ${fb.boardNo},
                replyNo : replyNo,
                memberNo : '${loginUser.memberNo}'},
            success : function (result){
                Swal.fire({
                    icon: 'success',
                    title: "댓글을 삭제하였습니다."
                }).then(()=>{
                    location.href = "${pageContext.request.contextPath}/board/freeList/detail/" + ${fb.boardNo};
                })
            },
            error : function (){
                Swal.fire({
                    icon: 'error',
                    title: "댓글 삭제에 실패하였습니다.."
                })
            }
        });
    }

    <!-- 게시글 신고하기 -->
    function declaration(){
        let reporter = $('input[name="reporter"]').val();
        let reportContent = $('#reportContent option:selected').val();
        let reportedPerson = $('input[name="reportedPerson"]').val();
        let reportFno = $('input[name="reportFno"]').val();

        $.ajax({
            url : "${pageContext.request.contextPath}/board/report",
            type : "post",
            data : {"reporter" : reporter,
                "reportContent" : reportContent,
                "reportedPerson" : reportedPerson,
                "reportFno" : reportFno},
            success : function (){
                Swal.fire({
                    icon: 'success',
                    title: '성공적으로 신고 접수 되었습니다.',
                    text: '관리자 확인 후 처리됩니다.'
                })
                $('#exampleModal').modal('hide');
            },
            error : function (){
                Swal.fire({
                    icon: 'error',
                    title: "신고 접수에 실패하였습니다"
                })
            }
        })
    }
</script>

</body>
</html>
