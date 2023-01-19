<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
</head>
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
                <label class="btn btn-outline-secondary" for="btn-check-outlined">${hashtagListByAdmin.hashtag}</label>
                <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
                <label class="btn btn-outline-secondary" for="btn-check-outlined"></label>

                <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
                <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
                <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
                <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
            </div>
        </div>
        <div class="detail main">
            <div class="main img">
                <img src="${restaurantDetail.resImgUrl}">
            </div>
            <div class="main infolist">
                <div class="info menu">
                    <i class="fa-solid fa-utensils"></i>
                    <span>주메뉴</span>
                    <span>${restaurantDetail.resFood}</span>
                </div>
                <div class="info address">
                    <i class="fa-solid fa-map-location-dot"></i>
                    <span>주소</span>
                    <span>${restaurantDetail.address}</span>
                </div>
                <div class="info number">
                    <i class="fa-solid fa-phone"></i>
                    <span>전화번호</span>
                    <span>${restaurantDetail.resPhone}</span>
                </div>
                <div class="info time">
                    <i class="fa-regular fa-clock"></i>
                    <span>영업시간</span>
                    <span>${restaurantDetail.resTime}</span>
                </div>
                <div class="info way">
                    <i class="fa-solid fa-train-subway"></i>
                    <span>오시는 길</span>
                    <span>${restaurantDetail.transport}</span>
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
        <div class="modal_close"><i class="fa-solid fa-xmark"></i></div>
        <div>
            
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