<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <style>
    div{
      border: 1px solid black;
      height: 200px;
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