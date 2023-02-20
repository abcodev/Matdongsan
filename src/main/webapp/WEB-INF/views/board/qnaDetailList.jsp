<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>질문게시판 상세보기</title>
    <%@ include file="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardDetail.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <c:set var="q" value="${qb.memberNo}"/>
</head>
<body>
<main>
    <div id="content">
        <div class="freeBoard_Detail">
            <div class="detail_top">
                <p>질문게시판</p>
                <input type="hidden" id="depth" value="${qb.depth}"/>
                <input type="hidden" id="parentBno" value="${qb.parentBno}"/>
                <input type="hidden" id="qBno" value="${qb.qnaBno}"/>
                <div class="board_area" name="boardArea">${qb.qnaArea}</div>
            </div>
            <div class="detail_head">
                <div class="board_title">
                    <i class="fa-solid fa-q"></i>
                    <input type="text" name="boardTitle" value="${qb.qnaTitle}" disabled style="background-color: white">
                </div>
                <div class="board_info">
                    <div class="board_writer" name="boardWriter">${qb.qnaWriter}</div>
                    <div class="board_date" name="boardDate">${fn:substring(qb.qnaDate, 0, 16)}</div>
                </div>
            </div>
            <div class="detail_body">
                <div name="boardContent" id="boardContent">${qb.qnaContent}</div>
            </div>
            <div class="btn_box">
                <c:if test="${not empty loginUser}">
                    <c:if test="${q eq loginUser.memberNo}">
                        <button type="button" class="btn1" onclick="deletePage(${qb.qnaBno})">삭제</button>
                    </c:if>
                    <c:if test="${q ne loginUser.memberNo}">
                        <c:if test="${q ne 1}">
                            <button onclick="movePage()" class="insertAnswer">답글달기</button>
                            <button type="button" class="alert_btn" data-bs-toggle="modal"
                                    data-bs-target="#exampleModal">신고하기
                            </button>
                        </c:if>
                    </c:if>
                </c:if>
            </div>
            <div class="answerList">
                <p class="answerLine">답글</p>
                <c:forEach var="list" items="${ab}">
                    <div id="Answer">
                        <i class="fa-solid fa-a"></i>
                        <div class="answer">
                            <div class="answerInfo">
                                <span>답변자</span>
                                <span>${list.qnaWriter}</span>
                            </div>
                            <div class="answerContent">
                                <span>${list.qnaTitle}</span>
                                <span>${list.qnaContent}</span>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>

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
                    <input type="hidden" name="reportFno" value="${qb.qnaBno}">
                    <input type="hidden" name="reportedPerson" value="${qb.memberNo}">
                </div>
                <div class="modal-footer">
                    <button type="button" data-bs-dismiss="modal">취소</button>
                    <button onclick="declaration();">신고하기</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        function movePage() {
            let depth = document.getElementById("depth").value;
            let pBno = document.getElementById("parentBno").value;
            let qBno = document.getElementById("qBno").value;

            location.href = '${pageContext.request.contextPath}/board/insertAnswer?&depth=' + depth + "&pBno=" + pBno + "&qBno=" + qBno;
        }

        function declaration() {
            let reporter = $('input[name="reporter"]').val();
            let reportContent = $('#reportContent option:selected').val();
            let reportedPerson = $('input[name="reportedPerson"]').val();
            let reportFno = $('input[name="reportFno"]').val();

            $.ajax({
                url: "${pageContext.request.contextPath}/board/qnaReport",
                type: "post",
                data: {
                    "reporter": reporter,
                    "reportContent": reportContent,
                    "reportedPerson": reportedPerson,
                    "reportFno": reportFno
                },
                success: function () {
                    Swal.fire({
                        icon: 'success',
                        title: '신고를 접수하였습니다.'
                    });
                    $('#exampleModal').modal('hide');
                },
                error: function () {
                    Swal.fire({
                        icon: 'error',
                        title: '서버 오류.'
                    });
                }
            })
        }

        function deletePage(qBno) {
            // Swal.fire({
            //     icon: 'success',
            //     title: '게시글을 삭제하였습니다.'
            // }).then(() => {
                location.href = '${pageContext.request.contextPath}/board/delete/' + qBno;
            // })
        }
    </script>


</main>
</body>
</html>