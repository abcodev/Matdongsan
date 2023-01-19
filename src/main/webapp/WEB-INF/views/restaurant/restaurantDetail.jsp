<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동네맛집상세보기</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantDetail.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <jsp:include page="../template/font.jsp"></jsp:include>

</head>
<body>
<%@include file ="../template/header.jsp" %>
<div id="content">
    <div class="detail head">
        <div class="head name">
            <span>가게명</span>
        </div>
        <div class="head star">
            <i class="fa-solid fa-star"></i>
            <span>N/N</span>
        </div>
        <div class="head tag">
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label >
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
        </div>
    </div>
    <div class="detail main">
        <div class="main img">
            <img src="맛집.jpg">
        </div>
        <div class="main infolist">
            <div class="info menu">
                <i class="fa-solid fa-utensils"></i>
                <span>주메뉴 :</span>
            </div>
            <div class="info address">
                <i class="fa-solid fa-map-location-dot"></i>
                <span>주소 :</span>
            </div>
            <div class="info number">
                <i class="fa-solid fa-phone"></i>
                <span>전화번호 :</span>
            </div>
            <div class="info time">
                <i class="fa-regular fa-clock"></i>
                <span>영업시간 :</span>
            </div>
            <div class="info way">
                <i class="fa-solid fa-train-subway"></i>
                <span>오시는 길 :</span>
            </div>
            <div class="info site">
                <i class="fa-solid fa-share-from-square"></i>
                <span>홈페이지 :</span>
            </div>
        </div>
    </div>
    <div class="detail review">
        <div class="review_btn_box">
            <span>리뷰</span>
            <button id="review_btn"><i class="fa-solid fa-pencil"></i>리뷰작성</button>
        </div>

        <div class="review user"></div>
        <div class="review img"></div>
        <div class="review content"></div>
        <div class="review tag"></div>
    </div>
</div>

<!-- 리뷰 모달 -->
<div class="black_bg"></div>
<div class="modal_wrap">
    <div id="modal_content">
        <div id="content_head">
            <span>가게명</span>
            <div class="modal_close"><i class="fa-solid fa-xmark"></i></div>
        </div>
        <div id="content_body">
            <span>별점</span>
            <form name="reviewForm" id="reviewForm" method="post">
                <div id="review_star">
                    <input type="radio" name="reviewStar" value="5" id="rate1"><label
                        for="rate1">★</label>
                    <input type="radio" name="reviewStar" value="4" id="rate2"><label
                        for="rate2">★</label>
                    <input type="radio" name="reviewStar" value="3" id="rate3"><label
                        for="rate3">★</label>
                    <input type="radio" name="reviewStar" value="2" id="rate4"><label
                        for="rate4">★</label>
                    <input type="radio" name="reviewStar" value="1" id="rate5"><label
                        for="rate5">★</label>
                </div>
                <div id="review_hashtag">
                    <input type="checkbox" class="btn-check" id="btn-check-outlined1" autocomplete="off">
                    <label class="btn btn-outline-secondary" for="btn-check-outlined1">#해시태그</label>
                </div>
                <div id="review_text">
                    <textarea type="text" id="reviewContent" placeholder="리뷰를 남겨주세요"></textarea>
                </div>
                <div class="review_img">
                    <input class="form-control form-control-sm" id="formFileSm" type="file">
                </div>
            </form>
        </div>
    </div>
</div>




<script>
    window.onload = function() {

        function onClick() {
            document.querySelector('.modal_wrap').style.display ='block';
            document.querySelector('.black_bg').style.display ='block';
        }
        function offClick() {
            document.querySelector('.modal_wrap').style.display ='none';
            document.querySelector('.black_bg').style.display ='none';
        }

        document.getElementById('review_btn').addEventListener('click', onClick);
        document.querySelector('.modal_close').addEventListener('click', offClick);
        document.querySelector('.black_bg').addEventListener("click", offClick);

    };

</script>
</body>
</html>