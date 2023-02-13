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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
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
                <div id="heart">
                    <input id="checkbox_heart_${interest.estateNo}" type="checkbox" onchange="changeHeart(${interest.estateNo})" checked="checked">
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
                        <tr class="myBoard_info" onclick="moveDetail();">
                            <script>
                                function moveDetail(){
                                    if(${selectAllBoardList.boardType eq 'F'}){
                                        location.href='${pageContext.request.contextPath}/board/freeList/detail/${selectAllBoardList.boardNo}'
                                    }else{
                                        location.href='${pageContext.request.contextPath}/board/detail/${selectAllBoardList.boardNo}'
                                    }
                                }
                            </script>
                            <td>${selectAllBoardList.boardType}</td>
                            <td>${selectAllBoardList.boardTitle}</td>
                            <td>${selectAllBoardList.boardDate}</td>
                        </tr>
                    </c:forEach>
                </table>
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
        <div class="review_history">
            <p>내가 남긴 리뷰</p>
                <div class="myReview_list">
                    <div class="review_resNm">레스토랑 이름</div>
                    <div class="review_star">★★★★★</div>
                    <div class="review_date">2023-01-18</div>
                </div>
        </div>
    </div>
    <div class="reserve_history">
        <p>부동산 예약 내역</p>
        <div class="myReserve_list">
            <table>
                <tr class="myReserve_info_list_top">
                    <th>공인중개사</th>
                    <th>예약일</th>
                    <th>예약시간</th>
                    <th>예약인원</th>
                    <th>예약처리</th>
                </tr>
                <tr class="myReserve_info_list" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <td>강남미소자이공인중개사사무소</td>
                    <td>2023-02-08</td>
                    <td>12:00</td>
                    <td>2명</td>
                    <td>예약확인 중</td>
                </tr>
            </table>
        </div>
        <%--  ************예약확인창 모달***************  --%>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <i class="fa-solid fa-user-check"></i>
                        <span>예약 상세정보</span>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="user_info">
                            <p>예약자 정보</p>
                            <div class="user_name">
                                <span>이름</span>
                                <p>김도윤</p>
                            </div>
                            <div class="user_phone">
                                <span>전화번호</span>
                                <p>01023239208</p>
                            </div>
                            <div class="user_email">
                                <span>이메일</span>
                                <p>lodykhve@naver.com</p>
                            </div>
                        </div>
                        <div class="reserve_info">
                            <p>예약내역</p>
                            <div class="realtor_name">강남공인중개사</div>
                            <div class="reserve_person">
                                <span>예약인원</span>
                                <p>3명</p>
                            </div>
                            <div class="reserve_date">
                                <span>예약날짜</span>
                                <p>2023-02-18</p>
                            </div>
                            <div class="reserve_time">
                                <span>예약시간</span>
                                <p>12:00</p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button">예약취소</button>
                    </div>
                </div>
            </div>
        </div>
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