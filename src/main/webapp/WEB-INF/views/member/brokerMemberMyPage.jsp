<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>부동산회원 페이지</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/member/myPage.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <jsp:include page="../template/font.jsp"/>
    <style>


    </style>
</head>
<body>
<%@ include file="../template/header.jsp" %>

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
                <button><a href="${pageContext.request.contextPath}/broker/enrollPage">나의 제휴부동산</a></button>
            </div>
        </div>

        <div id="like">
            <div class="like_list_top">내가 찜한 목록</div>
            <div class="like_list">
                <c:forEach items="${interestList}" var="interest">
                    <div id="heart">
                        <input id="checkbox_heart_${interest.estateNo}" type="checkbox"
                               onchange="changeHeart(${interest.estateNo})" checked="checked">
                        <label for="checkbox_heart_${interest.estateNo}"><i class="fa-solid fa-heart"></i></label>
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
                            <c:choose>
                                <c:when test="${selectAllBoardList.boardType eq '자유게시판'}">
                                    <tr class="myBoard_info" onclick="location.href='${pageContext.request.contextPath}/board/freeList/detail/${selectAllBoardList.boardNo}'">
                                </c:when>
                                <c:otherwise>
                                    <tr class="myBoard_info" onclick="location.href = '${pageContext.request.contextPath}/board/detail/${selectAllBoardList.boardNo}'">
                                </c:otherwise>
                            </c:choose>
                            <td>${selectAllBoardList.boardType}</td>
                            <td class="boardTitle">${selectAllBoardList.boardTitle}</td>
                            <td>${selectAllBoardList.boardDate}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div id="allBoardsPaging">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination" id="allBoardsPagination">
                                <c:choose>
                                    <c:when test="${ pi.currentPage eq 1 }">
                                        <li class="page-item disabled"><a class="page-link" href="#">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" onclick="retrieveAllBoards(${pi1.currentPage - 1})">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                                <c:forEach var="item" begin="${pi1.startPage }" end="${pi1.endPage }">
                                    <li class="page-item"><a class="page-link" onclick="retrieveAllBoards(${item})">${item }</a></li>
                                </c:forEach>

                                <c:choose>
                                    <c:when test="${ pi1.currentPage eq pi1.maxPage }">
                                        <li class="page-item disabled"><a class="page-link" href="#">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" onclick="retrieveAllBoards(${pi1.currentPage + 1})">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="review_history">
                <p>내가 남긴 리뷰</p>
                <div id="myReviewList">
                    <table>
                        <tr>
                            <th>레스토랑 이름</th>
                            <th>별점</th>
                            <th>리뷰게시일</th>
                        </tr>
                        <c:forEach var="reviewList" items="${reviewList}">
                            <tr class="myReview_info" onclick="location.href='restaurantDetail?resNo=${reviewList.resNo}'">
                                <td class="review_resNm">${reviewList.resName}</td>
                                <td class="review_star">
                                    <c:choose>
                                        <c:when test="${reviewList.starRating eq 5}">
                                            ★★★★★
                                        </c:when>
                                        <c:when test="${reviewList.starRating eq 4}">
                                            ★★★★
                                        </c:when>
                                        <c:when test="${reviewList.starRating eq 3}">
                                            ★★★
                                        </c:when>
                                        <c:when test="${reviewList.starRating eq 2}">
                                            ★★
                                        </c:when>
                                        <c:otherwise>
                                            ★
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td class="review_date">${reviewList.createDate}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <div id="reviewPaging">
                        <nav aria-label="Page navigation example">
                            <ul class="pagination" id="reviewPagination">
                                <c:choose>
                                    <c:when test="${ pi.currentPage eq 1 }">
                                        <li class="page-item disabled"><a class="page-link" href="#">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" onclick="retrieveReviewList(${pi2.currentPage - 1})">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>

                                <c:forEach var="item" begin="${pi2.startPage }" end="${pi2.endPage }">
                                    <li class="page-item"><a class="page-link" onclick="retrieveReviewList(${item})">${item }</a></li>
                                </c:forEach>

                                <c:choose>
                                    <c:when test="${ pi2.currentPage eq pi2.maxPage }">
                                        <li class="page-item disabled"><a class="page-link" href="#">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a class="page-link" onclick="retrieveReviewList(${pi.currentPage + 1})">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    <div class="reserve_history">
        <p>예약 확인</p>

        <button class="myReserve_list">
            <table id="broker_ResList">
                <tr>
                    <th>예약자명</th>
                    <th>예약일</th>
                    <th>예약시간</th>
                    <th>예약인원</th>
                    <th>예약처리</th>
                </tr>
                <c:forEach items="${brokerResList}" var="res">
                    <tr class="myReserve_info_list" >
                        <td style="display: none">${res.revNo}</td>
                        <td>${res.memberName}</td>
                        <td>${res.revDate}</td>
                        <td>${res.revTime}</td>
                        <td>${res.revPeople}</td>
                        <c:choose>
                            <c:when test="${res.revStatus eq 'C'}">
                                <td>예약확인 중</td>
                            </c:when>
                            <c:when test="${res.revStatus eq 'A'}">
                                <td style="color: rgba(159,111,217,0.83)">예약 완료</td>
                            </c:when>
                            <c:otherwise>
                                <td style="color: #b4b1b0">예약 취소</td>
                            </c:otherwise>
                        </c:choose>


                    </tr>
                </c:forEach>
            </table>
            <button class='modal_btn' data-bs-toggle="modal" data-bs-target="#exampleModal" style="display: none;"></button>
        </button>

        <%-- 예약 모달창 --%>
        <div id="reservationModal">
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

            </div>
        </div>
    </div>
</div>


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

    function deleteMember() {
        var deleteMember = confirm("모든 정보가 삭제됩니다.\n정말 탈퇴 하시겠습니까?");
        if(deleteMember === true){
            location.href = '${pageContext.request.contextPath}/delete';
            alert("그동안 맛동산을 이용해주셔서 감사합니다.");
        }
        else if(deleteMember === false){
        }
    }


    function retrieveAllBoards(current_page1) {
        $.ajax({
            url: '${pageContext.request.contextPath}/myPage',
            method: 'GET',
            data: {
                cpage: current_page1
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

    function retrieveReviewList(current_page2) {
        $.ajax({
            url: '${pageContext.request.contextPath}/myPage',
            method: 'GET',
            data: {
                cpage: current_page2
            },
            success(data) {
                $('#myReviewList').empty();
                console.log($(data).find("#myReviewList"));
                console.log($(data).find(".myReview_info").length);
                if ($(data).find(".myReview_info").length > 0) {
                    $('#myReviewList').html($(data).find("#myReviewList"))
                } else {
                    $('#myReviewList').html('<p>조회된 게시글이 없습니다.</p>');
                }
            }
        })
    }

    // 모달 불러오기
    $('#broker_ResList').on("click", "tr", function (){
        console.log($(this).find("td:eq(0)").text());
        let revNo = $(this).find("td:eq(0)").text();

        $.ajax({
            url: '${pageContext.request.contextPath}/reservation/modal',
            method: 'GET',
            data: {revNo : revNo},
            success: function (data){
                $('#exampleModal').html(data);
                $(".modal_btn").click();
            }
        })
    })

</script>

</body>
</html>