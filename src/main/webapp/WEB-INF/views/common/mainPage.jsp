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
    <jsp:include page="../template/font.jsp"></jsp:include>
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
                    <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/realEstate">부동산</a>
                    </button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn">
                        <a href="${pageContext.request.contextPath}/selectResList">동네맛집</a>
                    </button>
                </div>

                <div class="dropdown">
                    <button class="dropdown-btn"><a href="">커뮤니티</a></button>
                    <div class="dropdown-submenu">
                        <%--<c:forEach items="${boardTypeList }" var="boardType">
                            <a href="${pageContext.request.contextPath}/board/list/${boardType.boardCd}">${boardType.boardName }</a>
                        </c:forEach>--%>
                        <a href="${pageContext.request.contextPath}/board/list/C">질문 게시판</a>
                        <a href="${pageContext.request.contextPath}/board/list/F">자유 게시판</a>

                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/admin/chat">1:1문의</a>
                    </button>
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
                                    <img src="${loginUser.profileImage}" class="user_img" width="50px">
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


            <script type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
            <script>


                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                        level: 6 // 지도의 확대 레벨
                    };

                // 지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);


                var geocoder = new kakao.maps.services.Geocoder();
                var listData = [
                    <c:forEach items="${sellList}" var="list">
                        '${list.address}',
                    </c:forEach>
                ];

                listData.forEach(function (addr, index) {
                    geocoder.addressSearch(addr, function (result, status) {
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

                            if (index == 0) {
                                map.setCenter(coords);
                            }
                        }
                    });
                });

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
        <h3>최근 본 부동산 목록</h3>
    </div>
</div>
</div>
</body>
</html>