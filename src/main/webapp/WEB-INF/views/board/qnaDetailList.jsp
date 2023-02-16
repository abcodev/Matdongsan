<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%><!DOCTYPE html>

<c:set var="q" value="${qb.memberNo}"/>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <title>질문게시판 상세보기</title>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  <link rel="stylesheet" href="<c:url value="/resources/css/board/qnaBoardDetail.css"/>">
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
        rel="stylesheet">
  <jsp:include page="../template/font.jsp"/>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">


</head>
<body>
<main>
  <%@ include file ="../template/header.jsp" %>
  <div id="MainDiv">
    <div id="content">
      <div class="freeBoard_Detail">
        <div class="detail_top">
          <p>질문게시판</p>
          <input type="hidden" id="depth" value="${qb.depth}"/>
          <input type="hidden" id="parentBno" value="${qb.parentBno}"/>
          <input type="hidden" id="qBno" value="${qb.qnaBno}"/>

        </div>
        <div class="detail_head">
          <div class="board_title">

            <input type="text" name="boardTitle" value="${qb.qnaTitle}">

          </div>
          <div class="board_info">
            <div class="board_writer" name="boardWriter">${qb.qnaWriter}</div>
            <div class="board_date" name="boardDate">${qb.qnaDate}</div>
          </div>
        </div>
        <div class="detail_body">

          <div name="boardContent" >${qb.qnaContent}</div>

        </div>
        <div class="btn_box">
          <c:if test="${not empty loginUser}">
            <c:if test="${q eq loginUser.memberNo}">
              <button type="button" class="btn1" onclick="deletePage(${qb.qnaBno})">삭제</button>
              <%--<button><a href="${pageContext.request.contextPath}/board/delete/${qb.qnaBno}" class="btn1">삭제</a></button>--%>
            </c:if>
            <c:if test="${q ne loginUser.memberNo}">
              <c:if test="${q ne 1}">
                <button onclick="movePage()">답글달기</button>
                <button type="button" class="alert_btn" data-bs-toggle="modal" data-bs-target="#exampleModal">신고하기</button>
              </c:if>
            </c:if>
          </c:if>
        </div>

      </div>
    </div>
    <br>
    <div id="line"></div>


    <c:forEach var="list" items="${ab}">
      <div id="Answer">
          <%--    <c:if test="${empty list}">
                <span id="hong">작성된 답글이 없습니다</span>
              </c:if>--%>
        <span class="font">${qb.qnaTitle}</span>
        <span class="deptFont">에 대한 답글 제목 : </span>
        <span class="font">${list.qnaTitle}</span><br><br>
        <span class="deptFont">작성자 : </span>
        <span class="sFont">${list.qnaWriter}</span><br><br>
        <span class="deptFont">내용 : </span>
        <span class="sFont">${list.qnaContent}</span>
      </div>
    </c:forEach>

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
            <button onclick="declaration();" >신고하기</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script>
    function movePage(){
      let depth = document.getElementById("depth").value;
      let pBno = document.getElementById("parentBno").value;
      let qBno = document.getElementById("qBno").value;

      location.href = '${pageContext.request.contextPath}/board/insertAnswer?&depth='+depth+"&pBno="+pBno+"&qBno="+qBno;
    }

    function declaration(){
      let reporter = $('input[name="reporter"]').val();
      let reportContent = $('#reportContent option:selected').val();
      let reportedPerson = $('input[name="reportedPerson"]').val();
      let reportFno = $('input[name="reportFno"]').val();

      $.ajax({
        url : "${pageContext.request.contextPath}/board/qnaReport",
        type : "post",
        data : {"reporter" : reporter,
          "reportContent" : reportContent,
          "reportedPerson" : reportedPerson,
          "reportFno" : reportFno},
        success : function (result){
          console.log(result);
          swal('신고 완료','정상적으로 신고가 접수되었습니다','success');
          $('#exampleModal').modal('hide');
        },
        error : function (){
          swal('신고 실패',"",'error');
        }
      })
    }

    function deletePage(qBno){
      location.href = '${pageContext.request.contextPath}/board/delete/'+qBno;
      swal('삭제 완료!','정상적으로 삭제되었습니다','success');
    }
  </script>


</main>
</body>
</html>