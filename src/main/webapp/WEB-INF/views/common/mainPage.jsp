
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="s" value="com.project.common.vo.RealEstateSell"/>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맛동산</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/mainPage.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"></jsp:include>
</head>

<body>


<header id="header">
    <div class="inner">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/common/맛동산%20로고.png" alt="로고">
        </div>
        <nav class="navbar">
            <div class="navbar_menu">
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate/list">부동산</a></button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn">
                        <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                    </button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">커뮤니티</a></button>
                    <div class="dropdown-submenu">
                        <c:forEach items="${boardTypeList }" var="boardType">
                            <a href="${pageContext.request.contextPath}/board/list/${boardType.boardCd}">${boardType.boardName }</a>
                        </c:forEach>

                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/admin/chat">1:1문의</a></button>
                </div>
            </div>
        </nav>

        <div class="login">

            <c:choose>
                <c:when test="${ empty loginUser}">
                    <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
                </c:when>
                <c:otherwise>
                    <label>
                        <img src="${loginUser.profileImage}" width="50px">
                            ${loginUser.memberName} 님 환영합니다.
                    </label> &nbsp;&nbsp;
                    <%--                    <a href="${pageContext.request.contextPath}/myPage">마이페이지</a>--%>
                    <a href="${pageContext.request.contextPath}/logout">로그아웃</a>
                </c:otherwise>
            </c:choose>

        </div>

    </div>
</header>


<main>
    <div class="map">
        <div class="mapImg">
            <div id="map">


                <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
                <script>


                    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                        mapOption = {
                            center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                            level: 10 // 지도의 확대 레벨
                        };

                    // 지도를 생성합니다
                    var map = new kakao.maps.Map(mapContainer, mapOption);


                    var geocoder = new kakao.maps.services.Geocoder();


                    var listData = [
                        // '서울시 강남구 도곡동 538',
                        // '서울시 강남구 역삼동 729-35',
                        // '서울특별시 송파구 오금로13길 8',
                        // '서울특별시 송파구 올림픽로 25',
                        // '서울특별시 광진구 동일로18길 80',
                        // '서울특별시 종로구 지봉로 25',
                        // '서울특별시 성북구 인촌로 73',



                        <c:forEach items="${sellList}" var="list">

                        '서울'+'${list.bldgNm}',
                        </c:forEach>

                    ];



                    listData.forEach(function(addr, index) {
                        geocoder.addressSearch(addr, function(result, status) {
                            if (status === daum.maps.services.Status.OK) {
                                var coords = new daum.maps.LatLng(result[0].y, result[0].x);

                                var marker = new daum.maps.Marker({
                                    map: map,
                                    position: coords
                                });

                                var infowindow = new daum.maps.InfoWindow({
                                    content: '<div style="width:150px;text-align:center;padding:6px 0;">' + listData[index] + '</div>',
                                    disableAutoPan: true
                                });
                                infowindow.open(map, marker);

                                if(index == 0){
                                    map.setCenter(coords);
                                }
                            }
                        });
                    });


                </script>


            </div>








        </div>
        <div class="side news">
            <h3>부동산 주요 뉴스</h3>
            <br>
            <c:forEach var="news" items="${newsList}">
                <a href="${news.newsUrl}">${news.newsTitle}</a><br>
            </c:forEach>
            <hr>
            <p><a href="https://land.naver.com/news/">부동산 관련 뉴스 더보기</a></p>

        </div>

        <div class="side lookList">
            <h3>최근 본 부동산 목록</h3>


        </div>
    </div>
    <button id="go-top"><i class="fa-solid fa-angles-up"></i></button>
    <div class="floating-chat">
        <i class="fa-regular fa-comments"></i><span>1:1문의</span>
        <div class="chat">
            <div class="header">
                    <span class="title">
                        what's on your mind?
                    </span>
                <button>
                    <i class="fa fa-times" aria-hidden="true"></i>
                </button>
            </div>
            <ul class="messages">
                <li class="other">메세지</li>
                <li class="self">메세지</li>
            </ul>
            <div class="footer">
                <div class="text-box" contenteditable="true" disabled="true"></div>
                <button id="sendMessage">send</button>
            </div>
        </div>
    </div>
    </div>

</main>

</body>


<script>
    const header = document.querySelector('#header');

    function scrollFunc() {
        if (pageYOffset >= 1) {
            header.classList.add('on');
        } else {
            header.classList.remove('on');
        }
    }
    window.addEventListener('scroll', scrollFunc);


    var backToTop = () => {
        // Scroll | button show/hide
        window.addEventListener('scroll', () => {
            if (document.querySelector('html').scrollTop > 100) {
                document.getElementById('go-top').style.display = "block";
            } else {
                document.getElementById('go-top').style.display = "none";
            }
        });
        // back to top
        document.getElementById('go-top').addEventListener('click', () => {
            window.scrollTo({
                top: 0,
                left: 0,
                behavior: 'smooth'
            });
        })
    };
    backToTop();


    //채팅//

</script>

</html>