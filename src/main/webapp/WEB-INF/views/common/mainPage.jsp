<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
    <c:if test="${loginUser.grade != 'ADMIN'}">
        <jsp:include page="../chat/chat_pop.jsp"/>
    </c:if>

    <style>
        #controlOverlay{
            width: 500px;
            overflow: hidden;
            height: auto;
        }
    </style>
</head>

<body>
<header id="header">
    <div class="inner">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
        </div>
        <nav class="navbar">
            <c:choose>
                <c:when test="${loginUser.grade == 'ADMIN'}"> <%-- 관리자 --%>
                    <div class="navbar_menu admin">
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn">
                                <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/board/freeList">커뮤니티</a>
                            </button>
                            <div class="dropdown-submenu">
                                <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                                <a href="${pageContext.request.contextPath}/board/qnaList">질문&답변</a>
                            </div>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a
                                    href="${pageContext.request.contextPath}/chat/admin">1:1문의</a>
                            </button>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>  <%-- 일반회원, 부동산 회원 --%>
                    <div class="navbar_menu general">
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn">
                                <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                            </button>
                        </div>

                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/board/freeList">커뮤니티</a>
                            </button>
                            <div class="dropdown-submenu">
                                <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                                <a href="${pageContext.request.contextPath}/board/qnaList">질문&답변</a>
                            </div>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose>
        </nav>

        <div class="login">
            <c:choose>
                <c:when test="${ empty loginUser}">
                    <div class="login_before">
                        <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="login_after">
                        <img src="${loginUser.profileImage}" class="user_img">
                        <c:if test="${loginUser.grade == 'ADMIN'}">
                            <a href="${pageContext.request.contextPath}/admin/userList" class="after">관리자페이지</a>
                        </c:if>
                        <c:if test="${loginUser.grade == 'GENERAL' || loginUser.grade == 'GENERAL2'}">
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                        </c:if>
                        <c:if test="${loginUser.grade == 'BROKER'}">
                            <a href="${pageContext.request.contextPath}/brokerMemberMyPage" class="after">부동산회원페이지</a>
                        </c:if>

                        <a href="${pageContext.request.contextPath}/logout" class="logOut">로그아웃</a>
                        <div id="alarm_place">

                        </div>
                    </div>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
    <script>
        if (${loginUser.grade == 'GENERAL'}) {
            Swal.fire({
                icon: 'info',
                title: '회원정보 입력 후 이용해 주세요.',
            }).then((result) => {
                if (result.isConfirmed) {
                    window.location = '${pageContext.request.contextPath}/memberModify'
                }
            })
        }


        let alarmIsOpen = false;
        if (${not empty loginUser}) {
            window.onload = () => {
                retrieveAlarmList();
            }

            // EventSource 객체가 생성되는 시점에 구독이 이루어지고,
            const sse = new EventSource("${pageContext.request.contextPath}/alarm/subscribe");
            // addEventListener 를 통해서 연결되어있는 이벤트 스트림을 통해 새로운 이벤트가 왔을 때 할 행위를 등록함
            sse.addEventListener('realtime_alarm', (event) => {
                retrieveAlarmList();
            });
        }
        // 이벤트가 오면 콜백 메서드가 실행됨

        function retrieveAlarmList() {
            $.ajax({
                url: '${pageContext.request.contextPath}/alarmList',
                method: 'GET',
                success(data) {
                    const html = jQuery('<div>').html(data);
                    const contents = html.find('div#alarm_list_ajax').html()
                    $('#alarm_place').html(contents)
                    if (alarmIsOpen) {
                        $(".alert_box").toggle("scale");
                    }
                }
            });
        }
    </script>


</header>


<div class="map">
    <div class="mapImg">
        <div id="map">


            <script type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services&clusterer"></script>
            <%--            671b81703e84eaa09879d3693a30a73e--%>
            <%--            035c35f196fa7c757e49e610029837b1--%>

            <script>


                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(37.498978415273015, 127.03292276703169), // 지도의 중심좌표
                        level: 6 // 지도의 확대 레벨
                    };

                // 지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);
                var geocoder = new kakao.maps.services.Geocoder();
                var listData1 = [];
                listData1 = ${sellList2};


                listData1.forEach(function (addr, index) {
                    let overlay;
                    geocoder.addressSearch(addr['address'], function (result, status) {
                        if (status === kakao.maps.services.Status.OK) {
                            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                            var imageSrc = '	https://cdn-icons-png.flaticon.com/128/4974/4974596.png', // 마커이미지의 주소입니다
                                imageSize = new kakao.maps.Size(60, 60), // 마커이미지의 크기입니다
                                imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

                            // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                            var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

                            // 마커 생성
                            var marker = new kakao.maps.Marker({
                                map: map,
                                position: coords,
                                image: markerImage
                            });

                            var content = '<div id="controlOverlay" class="wrap">' +
                                '    <div class="info">' +
                                '           <div class="title">' +
                                '               <div class="bldgNm">' + '건물명  : ' + addr['bldgNm'] + '</div>' +
                                '                <div class="close" id="overlay-btn' + index + '" title="닫기"></div>' +
                                '           </div>' +
                                '            <div class="desc">' +
                                '               <div style="width:100px;padding:3px;">' + '주소  : 서울특별시 ' + addr['address'] + '</div>' +
                                '               <div style="width:100px;padding:3px;">' + '실거래가  : ' + addr['objAmt'] + '(만원)' + '</div>' +
                                '            </div>' +
                                '        </div>' +
                                '    </div>';

                            // 마커 위에 커스텀오버레이를 표시합니다
                            // 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
                            overlay = new kakao.maps.CustomOverlay({
                                content: null,
                                map: map,
                                position: marker.getPosition()
                            });

                            kakao.maps.event.addListener(marker, 'click', function () {
                                // window.open("http://www.naver.com");
                                // location.href= 'http://www.naver.com';
                                location.href = '${pageContext.request.contextPath}/realEstate/detail?estateNo=' + addr.estateNo;
                            }.bind(addr))

                            // 마커를 마우스오버 했을 때 커스텀 오버레이를 표시합니다
                            kakao.maps.event.addListener(marker, 'mouseover', function () {
                                overlay.setMap(map);
                                overlay.setContent(content);
                                // document.querySelector("#overlay-btn"+index).addEventListener('click',function(){
                                //     overlay.setMap(null);
                                // })
                            });

                            // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
                            kakao.maps.event.addListener(marker, 'mouseout', function () {
                                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                                overlay.setMap(null);
                            });

                            if (index == 0) {
                                map.setCenter(coords);
                            }
                        }
                    })
                });

                function displayMarker(locPosition, message) {

                    // 마커를 생성합니다
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: locPosition
                    });

                    var iwContent = message, // 인포윈도우에 표시할 내용
                        iwRemoveable = true;

                    // 인포윈도우를 생성합니다
                    var infowindow = new kakao.maps.InfoWindow({
                        content: iwContent,
                        removable: iwRemoveable
                    });

                    // 인포윈도우를 마커위에 표시합니다
                    infowindow.open(map, marker);

                    // 지도 중심좌표를 접속위치로 변경합니다
                    map.setCenter(locPosition);
                }

                if (navigator.geolocation) {

                    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
                    navigator.geolocation.getCurrentPosition(function (position) {

                        var lat = position.coords.latitude, // 위도
                            lon = position.coords.longitude; // 경도

                        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성
                            message = '<div style="padding:5px;">현재 위치</div>'; // 인포윈도우에 표시될 내용

                        // 마커와 인포윈도우를 표시
                        displayMarker(locPosition, message);

                    });

                } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정

                    var locPosition = new kakao.maps.LatLng(37.566826, 126.9786567),
                        message = 'geolocation을 사용할수 없어요..'

                    displayMarker(locPosition, message);
                }


            </script>

        </div>

    </div>
    <div class="side news">
        <span>부동산 주요 뉴스</span>
        <div class="news_list">
            <br>
            <c:forEach var="news" items="${newsList}">
                <a href="${news.newsUrl}">${news.newsTitle}</a><br>
            </c:forEach>
        </div>
        <span><a href="https://land.naver.com/news/">부동산 관련 뉴스 더보기</a></span>
    </div>

    <div class="side lookList">
        <c:choose>
            <c:when test="${loginUser == null}">
                <span>인기 아파트 순위</span>

                <c:forEach var="interestView" items="${interestViewList}" varStatus="status">
                    <a href="${pageContext.request.contextPath}/realEstate/detail?estateNo=${interestView.estateNo}">${status.count}. ${interestView.bldgNm}</a>
                </c:forEach>

            </c:when>
            <c:otherwise>
                <span>최근 본 부동산 목록</span>
                <c:forEach var="recentView" items="${recentViewList}" varStatus="status">
                    <a href="${pageContext.request.contextPath}/realEstate/detail?estateNo=${recentView.estateNo}">${recentView.bldgNm}</a>
                </c:forEach>
            </c:otherwise>
        </c:choose>
    </div>
</div>
<script>
    $("#chat-circle").click(function () {
        if (${not empty loginUser}) {
            openChat();
        } else {
            Swal.fire({
                icon: 'warning',
                title: '로그인 후 이용 가능합니다.'
            });
        }
    });
</script>

</body>
</html>