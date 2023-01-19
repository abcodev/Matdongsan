
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맛동산</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/mainPage.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
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
                            <a href="${pageContext.request.contextPath}/board/list/Q">자유게시판</a>

                        <a href="${pageContext.request.contextPath}/board/list/C">질문&답변</a>

                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">1:1문의</a></button>
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
            <div id="map"></div>
            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d144cacea9a46e256bfcdd30547dea9e&libraries=services,clusterer,drawing"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                        level: 3 // 지도의 확대 레벨
                    };

                var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
                var mapTypeControl = new kakao.maps.MapTypeControl();

                // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
                // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
                map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

                // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
                var zoomControl = new kakao.maps.ZoomControl();
                map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

                // 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
                var positions = [
                    {
                        content: '<div>카카오</div>',
                        latlng: new kakao.maps.LatLng(33.450705, 126.570677)
                    },
                    {
                        content: '<div>생태연못</div>',
                        latlng: new kakao.maps.LatLng(33.450936, 126.569477)
                    },
                    {
                        content: '<div>텃밭</div>',
                        latlng: new kakao.maps.LatLng(33.450879, 126.569940)
                    },
                    {
                        content: '<div>근린공원</div>',
                        latlng: new kakao.maps.LatLng(33.451393, 126.570738)
                    }
                ];

                for (var i = 0; i < positions.length; i ++) {
                    // 마커를 생성합니다
                    var marker = new kakao.maps.Marker({
                        map: map, // 마커를 표시할 지도
                        position: positions[i].latlng // 마커의 위치
                    });

                    // 마커에 표시할 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                        content: positions[i].content // 인포윈도우에 표시할 내용
                    });

                    // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                    kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
                }

                // 인포윈도우를 표시하는 클로저를 만드는 함수입니다
                function makeOverListener(map, marker, infowindow) {
                    return function() {
                        infowindow.open(map, marker);
                    };
                }

                // 인포윈도우를 닫는 클로저를 만드는 함수입니다
                function makeOutListener(infowindow) {
                    return function() {
                        infowindow.close();
                    };
                }
            </script>



        </div>
        <div class="side news">
            <h3>부동산 주요 뉴스</h3>
            <br>
<%--            <p><a href=${newsUrl}>${newsTitle}</a> </p>--%>
            <c:forEach var="news" items="${newsList}">
                    <a href="${news.newsUrl}">${news.newsTitle}</a><br><br>
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