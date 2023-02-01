<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
  <title>마이페이지</title>
  <link rel="stylesheet" href="<c:url value="/resources/css/member/myPage.css"/>">
  <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
  <div id="info_box">
    <div id="userimg">
      <img src="${loginUser.profileImage}">
    </div>

    <div id="userInfo">
      <table>
        <tr>
          <td>닉네임 : ${loginUser.nickName}</td>
        </tr>
        <tr>
          <td>핸드폰 : ${loginUser.phone}</td>
        </tr>
        <tr>
          <td>이메일 : ${loginUser.email}</td>
        </tr>
        <tr>
          <td>주소 : ${loginUser.address}</td>
        </tr>
        <tr>
          <td>관심구 : ${loginUser.interestState}</td>
        </tr>
      </table>
    </div>
    <div id="btn_box">
      <button>회원탈퇴</button>
      <a href="${pageContext.request.contextPath}/memberModify">정보수정</a>
    </div>
  </div>
  <div id="like">
    <h4>내가 찜한 목록</h4>
    <div id="likeList">
      <table>
      <c:forEach items="${interestList}" var="interestList">
        <tr onclick="location.href='realEstate/detail?estateNo=${interestList.estateNo}'">
          <td>${interestList.estateNo}</td>
        </tr>
      </c:forEach>
      </table>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
    </div>
  </div>
  <div id="myBoard">
    <h4>내 게시글 보기</h4>
    <div id="myBoardList">
      <table>
        <tr>
          <th>게시글 번호</th>
          <th>게시글 제목</th>
          <th>게시일</th>
        </tr>
        <c:forEach items="${freeBoardList}" var="freeBoardList">
          <tr onclick="location.href='board/freeList/detail/${freeBoardList.boardNo}'">
            <td>${freeBoardList.boardNo}</td>
            <td>${freeBoardList.boardTitle}</td>
            <td>${freeBoardList.boardDate}</td>
          </tr>
        </c:forEach>
      </table>

      <table>
        <c:forEach items="${qnaBoardList}" var="qnaBoardList">
          <tr onclick="location.href='board/detail/${qnaBoardList.qnaBno}'">
            <td>${qnaBoardList.qnaBno}</td>
            <td>${qnaBoardList.qnaTitle}</td>
            <td>${qnaBoardList.qnaDate}</td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </div>
  <div id="paging">

  </div>
</div>
</body>
</html>