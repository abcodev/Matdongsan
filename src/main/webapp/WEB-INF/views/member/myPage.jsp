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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<script>
    window.onload = () => {
      $.ajax({
        url: '${pageContext.request.contextPath}/myPage',
        method: 'GET',
        data: {
          'estateNo': '${interestList[i].estateNo}'
        },
        success(data) {
          $('#checkbox_heart').prop("checked", data);
        }
      });
    }

</script>
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

            <c:forEach items="${interestList}" var="interestList">
                <div id="heart" class="likeInfo">
                    <input id="checkbox_heart" type="checkbox" onchange="changeHeart()">하트
                    <div onclick="location.href='realEstate/detail?estateNo=${interestList.estateNo}'">
                            ${interestList.estateNo}<br>${interestList.bldgNm}<br>${interestList.address}
                    </div>
                  <script>
                    function changeHeart() {
                      $.ajax({
                        url: '${pageContext.request.contextPath}/mypage',
                        type: 'POST',
                        contentType: "application/json; charset=UTF-8",
                        data: JSON.stringify({
                          'estateNo': ${interestList.estateNo},
                          'isInterest': $('#checkbox_heart').is(':checked')
                        })
                      });
                    }
                  </script>
                </div>
            </c:forEach>
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
                <c:forEach items="${selectAllBoardList}" var="selectAllBoardList">
                    <tr class="myBoard_info"
                        onclick="location.href='board/freeList/detail/${selectAllBoardList.boardNo}'">
                        <td>${selectAllBoardList.boardNo}</td>
                        <td>${selectAllBoardList.boardTitle}</td>
                        <td>${selectAllBoardList.boardDate}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>

    <div id="paging">
        <ul class="pagination">
            <c:choose>
                <c:when test="${pi.currentPage eq 1}">
                    <li class="page-item disabled">Previous</li>
                </c:when>
                <c:otherwise>
                    <li class="page-item" onclick="retrieveAllBoards(${pi.currentPage - 1})">Previous</li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item" onclick="retrieveAllBoards(${item})">${item }</li>
            </c:forEach>

            <c:choose>
                <c:when test="${pi.currentPage eq pi.maxPage}">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item" onclick="retrieveAllBoards(${pi.currentPage + 1})">Next</li>
                </c:otherwise>
            </c:choose>

        </ul>
    </div>
</div>
<script>
    function retrieveAllBoards(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/myPage',
            method: 'GET',
            data: {
                cpage: current_page
            },
            success(data) {
                $('#myBoardList').empty();
                console.log($(data).find("#myBoardList"));
                console.log($(data).find(".myBoard_info").length);
                if ($(data).find(".myBoard_info").length > 0) {
                    $('#myBoardList').html($(data).find("#myBoardList"))
                } else {
                    $('#myBoardList').html('<p>조회된 게시글이 없습니다.</p>');
                }
            }
        })
    }


</script>

</body>
</html>