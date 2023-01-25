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
    <jsp:include page="../chat/chat_pop.jsp"></jsp:include>
</head>

<body>
<header id="header">
    <div class="inner">
        <div class="logo">
            <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
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
                    <div class="login_before">
                        <a href="${pageContext.request.contextPath}/loginPage">로그인</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="login_after">
                        <table>
                            <tr>
                                <td rowspan="2">
                                    <img src="${loginUser.profileImage}" class="user_img">
                                </td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                                </td>
                            </tr>
                        </table>
                        <i class="fa-regular fa-bell"></i>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</header>
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

                    // var data = [
                    //         [37.50060595890094, 127.03641515171977, '<div>역삼역</div>'],
                    //     [37.497894084226566, 127.0275224134069, '<div>강남역</div>'],
                    //     [37.50376021959136, 127.0248781368448, '<div>신논현역</div>']
                    // ];

                    // for(var i = 0; i<data.length; i++){
                    //     var marker = new kakao.maps.Marker({
                    //         position : new kakao.maps.LatLng(data[i][0], data[i][1], data[i][2]),
                    //         map : map
                    //     });
                    //
                    //     // 인포윈도우 생성
                    //     var infoWindow = new kakao.maps.InfoWindow({
                    //         content : data[i][2]
                    //     });
                    //
                    //     infoWindow.open(map, marker);
                    // }

                    //
                    //             // 마커에 표시할 인포윈도우를 생성합니다
                    //             var infowindow = new kakao.maps.InfoWindow({
                    //                 content: positions[i].content // 인포윈도우에 표시할 내용
                    //             });
                    //
                    //             // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                    //             // 이벤트 리스너로는 클로저를 만들어 등록합니다
                    //             // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                    //             kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                    //             kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
                    //         }
                    //         console.log(data);
                    //     });
                    // })
                    //
                    // // 마커를 표시할 위치와 내용을 가지고 있는 객체 배열입니다
                    // var positions = [
                    //     {
                    //         content: '<div>역삼역</div>' +
                    //             '<div style="padding: 5px">매매가 : </div>',
                    //         latlng: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977)
                    //     },
                    //     {
                    //         content: '<div>강남역</div>' +
                    //             '<div style="padding: 5px">매매가 : </div>',
                    //         latlng: new kakao.maps.LatLng(37.497894084226566, 127.0275224134069)
                    //     },
                    //     {
                    //         content: '<div>신논현역</div>' +
                    //             '<div style="padding: 5px">매매가 : </div>',
                    //         latlng: new kakao.maps.LatLng(37.50376021959136, 127.0248781368448)
                    //     },
                    //     {
                    //         content: '<div>서울역</div>' +
                    //             '<div style="padding: 5px">매매가 : </div>',
                    //         latlng: new kakao.maps.LatLng(37.55436845910307, 126.97066305930028)
                    //     }
                    // ];








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
                        '${list.bldgNm}'
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

                   // 지도에 마커와 인포윈도우를 표시하는 함수










                    //HTML5의 geolocation으로 사용할 수 있는지 확인
                    if (navigator.geolocation) {

                        // GeoLocation을 이용해서 접속 위치를 얻어옵니다
                        navigator.geolocation.getCurrentPosition(function(position) {

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








<%--            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1"></script>--%>
<%--            <script>--%>
<%--                var mapContainer = document.getElementById('map'), // 지도를 표시할 div--%>
<%--                    mapOption = {--%>
<%--                        center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표--%>
<%--                        level: 6 // 지도의 확대 레벨--%>
<%--                    };--%>

<%--                var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다--%>

<%--                // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다--%>
<%--                var mapTypeControl = new kakao.maps.MapTypeControl();--%>

<%--                // 지도에 컨트롤을 추가해야 지도위에 표시됩니다--%>
<%--                // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다--%>
<%--                map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);--%>

<%--                // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다--%>
<%--                var zoomControl = new kakao.maps.ZoomControl();--%>
<%--                map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);--%>

<%--                // HTML5의 geolocation으로 사용할 수 있는지 확인--%>
<%--                if (navigator.geolocation) {--%>

<%--                    // GeoLocation을 이용해서 접속 위치를 얻어옵니다--%>
<%--                    navigator.geolocation.getCurrentPosition(function(position) {--%>

<%--                        var lat = position.coords.latitude, // 위도--%>
<%--                            lon = position.coords.longitude; // 경도--%>

<%--                        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성--%>
<%--                            message = '<div style="padding:5px;">현재 위치</div>' +--%>
<%--                                '<div style="padding: 5px">매매가 : </div>'; // 인포윈도우에 표시될 내용--%>


<%--                        // 마커와 인포윈도우를 표시--%>
<%--                        displayMarker(locPosition, message);--%>

<%--                    });--%>

<%--                } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정--%>

<%--                    var locPosition = new kakao.maps.LatLng(37.566826, 126.9786567),--%>
<%--                        message = 'geolocation을 사용할수 없어요..'--%>

<%--                    displayMarker(locPosition, message);--%>
<%--                }--%>

<%--                // 주소-좌표 변환 객체 생성--%>




<%--                    // 지도에 마커와 인포윈도우를 표시하는 함수--%>
<%--                function displayMarker(locPosition, message) {--%>

<%--                    // 마커를 생성합니다--%>
<%--                    var marker = new kakao.maps.Marker({--%>
<%--                        map: map,--%>
<%--                        position: locPosition--%>
<%--                    });--%>

<%--                    var iwContent = message, // 인포윈도우에 표시할 내용--%>
<%--                        iwRemoveable = true;--%>

<%--                    // 인포윈도우를 생성합니다--%>
<%--                    var infowindow = new kakao.maps.InfoWindow({--%>
<%--                        content : iwContent,--%>
<%--                        removable : iwRemoveable--%>
<%--                    });--%>

<%--                    // 인포윈도우를 마커위에 표시--%>
<%--                    infowindow.open(map, marker);--%>

<%--                    // 지도 중심좌표를 접속위치로 변경--%>
<%--                    map.setCenter(locPosition);--%>
<%--                }--%>








            <%--            <c:forEach var="s" items="${ list }">--%>
            <%--                <tr>--%>
            <%--                    <td class="">${}</td>--%>
            <%--                </tr>--%>
            <%--            </c:forEach>--%>

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
            <h3>최근 본 부동산 목록</h3>
        </div>
    </div>
    </div>
</body>
</html>