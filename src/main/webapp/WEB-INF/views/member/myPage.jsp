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

    function changeHeart(estateNo) {
        $.ajax({
            url: '${pageContext.request.contextPath}/myPage',
            type: 'POST',
            contentType: "application/json; charset=UTF-8",
            data: JSON.stringify({
                'estateNo': estateNo,
                'isInterest': $('#checkbox_heart_' + estateNo).is(':checked')
            }),
            success() {
                alert("관심목록이 해지되었습니다.")
                location.reload();
            }
        });
    }
</script>

<div id="content">
    <div id="info_box">
        <div id="user_img">
            <img src="${loginUser.profileImage}">
        </div>

        <div id="userInfo">
            <table>
                <tr>
                    <td><span>닉네임</span>${loginUser.nickName}</td>
                </tr>
                <tr>
                    <td><span>핸드폰</span>${loginUser.phone}</td>
                </tr>
                <tr>
                    <td><span>이메일</span>${loginUser.email}</td>
                </tr>
                <tr>
                    <td><span>주소</span>${loginUser.address}</td>
                </tr>
            </table>
        </div>
        <div id="btn_box">
            <button onclick="deleteMember()">회원탈퇴</button>
            <button><a href="${pageContext.request.contextPath}/memberModify">정보수정</a></button>
        </div>
    </div>

    <div id="like">
        <div class="like_list_top">내가 찜한 목록</div>
        <div class="like_list">
            <c:forEach items="${interestList}" var="interest">
                <div id="heart" class="likeInfo">
                    <input id="checkbox_heart" type="checkbox" onchange="changeHeart(${interest.estateNo})" checked="checked">
                    <label for="checkbox_heart"><i class="fa-solid fa-heart"></i></label>

                    <div onclick="location.href='realEstate/detail?estateNo=${interest.estateNo}'">
                        <div class="bldg_name">${interest.bldgNm}</div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <div id="history_list">
        <div class="board_history">
            <p>내 게시글 보기</p>
            <div id="myBoardList">
                <table>
                    <tr>
                        <th>게시판</th>
                        <th>게시글 제목</th>
                        <th>게시일</th>
                    </tr>
                    <c:forEach items="${selectAllBoardList}" var="selectAllBoardList">
                        <tr class="myBoard_info"
                            onclick="location.href='board/freeList/detail/${selectAllBoardList.boardNo}'">
                            <td>${selectAllBoardList.boardType}</td>
                            <td>${selectAllBoardList.boardTitle}</td>
                            <td>${selectAllBoardList.boardDate}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div class="reserve_history">
            <p>부동산 예약 내역</p>
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

    function deleteMember() {
        var deleteMember = confirm("모든 정보가 삭제됩니다.\n정말 탈퇴 하시겠습니까?");
        if(deleteMember === true){
            location.href = '${pageContext.request.contextPath}/delete';
            alert("그동안 맛동산을 이용해주셔서 감사합니다.");
        }
        else if(deleteMember === false){
        }
    }


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