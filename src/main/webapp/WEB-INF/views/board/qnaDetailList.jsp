<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <jsp:include page="../template/font.jsp"/>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <style>
    .btn_box > .alert_btn_box {
      padding-left: 86%;
      margin-top: 10px;
    }

    .btn_box > .alert_btn_box > button{
      margin-left: 10px;
      border: none;
      width: auto;
      height: auto;
      font-size: 16px;
      background-color: #f3f1f5;
      color: #213048;
      font-weight: 450;
      cursor: pointer;
      border-radius: 2px;
      padding: 5px 10px 5px 10px;
    }

    .btn_box > .alert_btn_box > button:hover{
      background-color: #566392;
      color: #f3f1f5;
    }

    .modal-content{
      width: 80%;
    }

    .fa-person-circle-exclamation{
      font-size: 22px;
      margin-right: 10px;
    }

    .modal-header > span{
      font-size: 20px;
      font-weight: 450;
    }

    .modal-body > select{
      width: 100%;
      height: 35px;
      border: 1px solid #cccccc;
      border-radius: 3px;
      font-size: 15px;
      font-weight: 400;
      color: #515151;
      cursor: pointer;
    }

    .modal-footer > button{
      margin-left: 10px;
      border: none;
      width: auto;
      height: auto;
      font-size: 16px;
      background-color: #f3f1f5;
      color: #213048;
      font-weight: 450;
      cursor: pointer;
      border-radius: 2px;
      padding: 5px 10px 5px 10px;
    }

    .modal-footer > button:hover{
      background-color: #566392;
      color: #f3f1f5;
    }


  </style>

</head>
<body>
<main>

  <table id="contentArea" class="table">
    <tr>
      <th>제목</th>
      <td colspan="3">${qb.qnaTitle}</td>
    </tr>
    <tr>
      <th>닉네임</th>
      <td colspan="3">${qb.qnaWriter}</td>
    </tr>
    <tr>
      <th width="100">날짜</th>
      <td colspan="3">${qb.qnaDate}</td>
    </tr>
    <tr>
      <th>내용</th>
      <td colspan="3">${qb.qnaContent}</td>
    </tr>
    <tr>
      <th>지역</th>
      <td colspan="3">${qb.qnaArea}</td>
    </tr>
  <input type="hidden" id="depth" value="${qb.depth}"/>
    <input type="hidden" id="parentBno" value="${qb.parentBno}"/>
    <input type="hidden" id="qBno" value="${qb.qnaBno}"/>

    <button id="writebtn1" onclick="movePage()"><i class="fa-solid fa-pencil"></i>답글달기</button>
    <%--<c:if test="${ not empty loginUser }">--%>
    <button id="delete">
    <a href="${pageContext.request.contextPath}/board/delete/${qb.qnaBno}" class="btn1">삭제하기</a>
    </button>
   <%-- </c:if>--%>
  </table>
  <br><br><br><br><br><br>

  <c:if test="${empty list}">
    <span id="hong">작성된 답글이 없습니다</span>
  </c:if>
  <c:forEach var="list" items="${ab}">

    <Div>
      <span>${qb.qnaTitle}대한 답변</span><br><br>
      <span>제목 : ${list.qnaTitle}</span><br><br>
      <span>작성자 : ${list.qnaWriter}</span><br><br><br>
      <span>내용 :${list.qnaContent}</span>


    </Div>
  </c:forEach>
  <button type="button" class="alert_btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
    신고하기
  </button>
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
          alert("신고 완료");
          $('#exampleModal').modal('hide');
        },
        error : function (){
          alert("신고 실패");
        }
      })
    }

  </script>


</main>
</body>
</html>