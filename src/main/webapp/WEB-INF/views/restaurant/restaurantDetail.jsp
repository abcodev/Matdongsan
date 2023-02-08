<%@ page language="java" pageEncoding="UTF-8"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
</head>
<body>
<%@ include file ="../template/header.jsp" %>
<div id="content">
    <div class="detail_head">

        <%--관리자 모드--%>
        <div class="detail_head_admin">
            <c:if test="${ loginUser.memberNo == 1}">
                <button onclick="location.href='admin/resModify?resNo=${restaurantDetail.resNo}'">수정하기</button>
                <button onclick="location.href='admin/resDelete?resNo=${restaurantDetail.resNo}'">삭제하기</button>
            </c:if>
        </div>

        <div class="head name">
            <span>${restaurantDetail.resName}</span>
        </div>
        <div class="head star">
            <i class="fa-solid fa-star"></i>
            <span id="star_rating"></span>
        </div>
        <div class="head tag">

            <c:forEach items="${resHashtagByAdmin}" var="hashtag">
                <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
                <label class="btn btn-outline-secondary" for="btn-check-outlined">${hashtag}</label>
            </c:forEach>
            <c:forEach items="${resHashtagByReview}" var="hashtag">
                <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>
                <label class="btn btn-outline-secondary" for="btn-check-outlined">${hashtag}</label>
            </c:forEach>

            <%--해시태그 비동기 갱신--%>
            <%--            <span id = "hashtag_by_review">--%>
            <%--                <c:forEach items="${resHashtagByReview}" var="hashtag">--%>
            <%--                    <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>--%>
            <%--                    <label class="btn btn-outline-secondary" for="btn-check-outlined">${hashtag}</label>--%>
            <%--                </c:forEach>--%>
            <%--            </span>--%>
        </div>
    </div>
    <div class="detail_main">
        <div class="main img">
            <img src="${restaurantDetail.resImgUrl}">
        </div>
        <div class="main info_list">
            <div class="info menu">
                <i class="fa-solid fa-utensils"></i>
                <span class="detail">주메뉴</span>
                <span>${restaurantDetail.resFood}</span>
            </div>
            <div class="info address">
                <i class="fa-solid fa-map-location-dot"></i>
                <span class="detail">주소</span>
                <span>${restaurantDetail.address}</span>
            </div>
            <div class="info number">
                <i class="fa-solid fa-phone"></i>
                <span class="detail">전화번호</span>
                <span>${restaurantDetail.resPhone}</span>
            </div>
            <div class="info time">
                <i class="fa-regular fa-clock"></i>
                <span class="detail">영업시간</span>
                <span>${restaurantDetail.resTime}</span>
            </div>
            <div class="info way">
                <i class="fa-solid fa-train-subway"></i>
                <span class="detail">오시는 길</span>
                <span>${restaurantDetail.transport}</span>
            </div>
            <div class="info web">
                <i class="fa-solid fa-globe"></i>
                <span class="detail">홈페이지</span>
                <span><a href="${restaurantDetail.website}">${restaurantDetail.website}</a></span>
            </div>
        </div>
    </div>
    <%--    *****************************************리뷰*********************************************--%>
    <div class="detail review">
        <div class="review_btn_box">
            <span>리뷰</span><span id="rCount"></span>
            <button id="review_btn"><i class="fa-solid fa-pencil"></i>리뷰작성</button>
        </div>
        <div class="review content">
            <table id="reviewArea">
                <tbody>
                </tbody>
            </table>
        </div>
    </div>

</div>

<%--리뷰모달--%>
<div class="black_bg"></div>
<div class="modal_wrap">
    <div id="modal_content">

        <div id="content_head">
            <span>가게명</span>
            <div class="modal_close"><i class="fa-solid fa-xmark"></i></div>
        </div>
        <div id="content_body">
            <span>별점</span>
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
                <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
                    <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="chk_hashtag"
                           autocomplete="off" value="${hashtag.hashtag}">
                    <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
                </c:forEach>
            </div>

            <div id="review_text">
                <textarea type="text" id="reviewContent" placeholder="리뷰를 남겨주세요"></textarea>
            </div>

            <div class="review_img">
                <input class="form-control form-control-sm" id="formFileSm" type="file" multiple>
            </div>

            <button id="review_insert" onclick="insertReview()">등록하기</button>

        </div>
    </div>
</div>


<script>
    window.onload = function () {

        function onClick() {
            document.querySelector('.modal_wrap').style.display = 'block';
            document.querySelector('.black_bg').style.display = 'block';
        }

        function offClick() {
            document.querySelector('.modal_wrap').style.display = 'none';
            document.querySelector('.black_bg').style.display = 'none';
        }

        document.getElementById('review_btn').addEventListener('click', onClick);
        document.getElementById('review_insert').addEventListener('click', offClick);
        document.querySelector('.modal_close').addEventListener('click', offClick);
        document.querySelector('.black_bg').addEventListener("click", offClick);

        // $('.modal_wrap').on('hidden.bs.modal', function (e) {
        //     $(offClick).find('form')[0].reset()
        // });

        selectReviewList();
    };

    // 리뷰 조회
    function selectReviewList() {
        $.ajax({
            url: '${pageContext.request.contextPath}/restaurant/selectReview',
            type: 'GET',
            data: {
                resNo: ${restaurantDetail.resNo}
            },
            dataType: "json",
            success: function (list) {
                console.log(list);
                let str = "";
                for (let i of list) {
                    console.log(i)
                    let hashtagList = '';
                    for (let hashtag of i.hashtags) {
                        hashtagList += '<label class="btn btn-outline-secondary" for="btn-check-outlined">' + hashtag + '</label>';
                    }
                    let imgList = '';
                    for (let img of i.changeNames) {
                        imgList += '<img src="' + img + '" />'
                    }

                    str += '<div>'
                        + '<div><br><hr></div>'
                        + '<div class="review_header">'
                        + '<div class="review_user_img"> <img src=\"' + i.profileImage + '\"/> </div>'
                        + '<div class="review_user_name">' + i.memberName + '</div>'
                        + '<div class="review_star_rating">' + ((i.starRating === 5 ? "★★★★★": i.starRating === 4 ? "★★★★": i.starRating === 3 ? "★★★": i.starRating === 2 ? "★★": i.starRating === 1 ? "★" : "" )) + '</div>'
                        + '<div class="review_date">' + i.createDate.substring(0, 16) + '</div>'
                        + (('1' === '${loginUser.memberNo}' ? "<button onclick='deleteReview(this);'>x</button>":""))
                        + '<div>' + "<input type='hidden' name='revNo' value=" + i.revNo + ">" + '</div>'
                        + '</div>'
                        + '<div class="review_content">' + i.reviewContent + '</div>'
                        + '<div class="review_img_list">' + imgList + '</div>'
                        + '<div>' + hashtagList + '</div>'
                        + '</div>';
                }
                $("#reviewArea tbody").html(str);
                $("#rCount").html(list.length);

                let star_rating;
                if (list.length === 0) {
                    star_rating = '별점을 남겨주세요!'
                } else {
                    star_rating = Math.round(list.map(obj => obj['starRating'])
                        .reduce((accumulator, current) => accumulator + current, 0) *10 / list.length) / 10
                    star_rating += ' / 5'
                }
                $('#star_rating').html(star_rating)

                // 해시태그 비동기 갱신
                // const hashtag_list = list.flatMap(obj => obj['hashtags'])
                // const hashtag_count = {}
                // hashtag_list.forEach(hashtag => {
                //     if (hashtag_count[hashtag] === undefined) {
                //         hashtag_count[hashtag] = 1
                //     } else {
                //         hashtag_count[hashtag] += 1
                //     }
                // });
                // const items = Object.keys(hashtag_count).map((key) => [key, hashtag_count[key]]);
                // items.sort((first, second) => second[1] - first[1]);
                // const keys = items.map((e) => e[0]);
                // let review_hashtag_contents = '';
                //
                // keys.slice(0, 2).forEach(hashtag => {
                //     review_hashtag_contents +=
                //         '<input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off" disabled>' +
                //         '<label class="btn btn-outline-secondary" for="btn-check-outlined">' + hashtag + '</label>'
                // });
                // $('.head tag').html(review_hashtag_contents);

            },
            error: function () {
                console.log("리뷰조회 ajax통신 실패");
            }
        });
    }

    function ajaxHashtag() {
        $.ajax({
            url: '${pageContext.request.contextPath}/restaurant/selectHashtag',
            type: 'GET',
            data: {
                resNo: ${restaurantDetail.resNo}
            },
            success: function (data) {
                // hashtag....
            }
        });
    }

    // 리뷰 등록
    function insertReview() {
        const score = $('input:radio[name=reviewStar]:checked').val();
        const hashtags = [];
        $('input:checkbox[name=chk_hashtag]:checked').each(function() {
            hashtags.push(this.value);
        });
        const contents = $('#reviewContent').val()
        const files = $('#formFileSm')[0].files

        const formData = new FormData();
        formData.set("resNo", ${restaurantDetail.resNo});
        formData.set("score", score);
        formData.set("hashtags", hashtags.join(","));
        formData.set("contents", contents);
        for (let i = 0; i < files.length; ++i) {
            formData.append("files", files[i])
        }

        $.ajax({
            url: '${pageContext.request.contextPath}/restaurant/insertReview',
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: () => {
                ajaxHashtag();
                selectReviewList();
            },
            error: function () {
                console.log("리뷰 등록 실패");
            }
        });
    }

    // 리뷰 해시태그 최대 선택 개수 제한
    $('input:checkbox[name=chk_hashtag]').click(function(){
        let cntEPT = $('input:checkbox[name=chk_hashtag]:checked').length;
        if(cntEPT>3){
            alert('해시태그는 최대 3개까지 선택 가능합니다.')
            $(this).prop('checked', false);
        }
    });

    // 관리자 - 리뷰삭제
    function deleteReview(button){
        let revNo = $(button).parent().parent().find("[name='revNo']").val();
        $.ajax({
            url : "${pageContext.request.contextPath}/restaurant/review/" + revNo,
            type : "delete",
            success : function (result) {
                alert("리뷰 삭제 성공");
                selectReviewList();
            },
            error : function (){
                alert("리뷰 삭제 실패");
            }
        });
    }
</script>



</body>
</html>



