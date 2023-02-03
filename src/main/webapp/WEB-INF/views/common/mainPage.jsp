<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<c:set var="s" value="com.project.common.vo.RealEstateSell"/>

<!DOCTYPE html>
<html lang="en">

<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 150px;height: 100px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 150px;height: 100px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 12px;font-weight: bold; text-align: left;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 5px; height: 75px; font-size:12px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>맛동산</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/common/mainPage.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
    <jsp:include page="../chat/chat_pop.jsp"/>
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
                        <a href="${pageContext.request.contextPath}/board/freeList">자유게시판</a>
                        <a href="${pageContext.request.contextPath}/board/qnaList">질문&답변</a>
                    </div>
                </div>
                <c:choose>
                <c:when test="${loginUser.memberNo == 1}">
                    <div class="dropdown">
                        <button class="dropdown-btn"><a href="${pageContext.request.contextPath}/chat/admin">1:1문의</a>
                        </button>
                    </div>
                </c:when>
                    <c:otherwise>
                        <div class="dropdown">
                            <button class="dropdown-btn"><a href="${pageContext.request.contextPath}">FAQ</a>
                            </button>
                        </div>
                    </c:otherwise>
                </c:choose>
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

                    <c:if test="${loginUser.memberNo == 1}">
                        <div class="login_after">
                            <img src="${loginUser.profileImage}" class="user_img">
                            <a href="${pageContext.request.contextPath}/admin/userList" class="after">관리자페이지</a>
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                            <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                            <i class="fa-regular fa-bell"></i>
                        </div>
                    </c:if>
                    <c:if test="${loginUser.memberNo != 1}">
                        <div class="login_after">
                            <img src="${loginUser.profileImage}" class="user_img">
                            <a href="${pageContext.request.contextPath}/myPage" class="after">마이페이지</a>
                            <a href="${pageContext.request.contextPath}/logout" class="after">로그아웃</a>
                            <i class="fa-regular fa-bell"></i>
                        </div>
                    </c:if>
                </c:otherwise>
            </c:choose>
            <%--      실시간 알림    --%>
            <div class="alert_box">
                <div class="alert_box_header">
                    <span>전체알림</span>
                    <span>읽은 알림 삭제</span>
                    <span><i class="fa-solid fa-x"></i></span>
                </div>
                <div class="alert_box_body">
                    <div class="alert_list">
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i class="fa-solid fa-circle-dot"></i>내 글에 댓글 작성됨</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i class="fa-solid fa-circle-dot"></i>내가 찜한 부동산의 정보 업데이트</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                        <div class="new_alert">
                            <div>
                                <span class="alert_content"><i class="fa-solid fa-circle-dot"></i>1:1 채팅 문의 답변</span>
                                <i class="fa-regular fa-trash-can"></i>
                            </div>
                            <span class="alert_date">1월 27일 </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        // TODO : 로그인 된 후에만되도록 분기문 필요
        const sse = new EventSource("${pageContext.request.contextPath}/alarm/subscribe");
        sse.addEventListener('realtime_alarm', (event) => {
            console.log(event);
        })

        <%-- 실시간 알림 --%>
        $(".fa-bell").click(function () {
            $(".alert_box").toggle("scale");
        });

        $(".fa-x").click(function () {
            $(".alert_box").toggle("scale");
        });
    </script>



</header>


<div class="map">
    <div class="mapImg">
        <div id="map">


            <script type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
<%--            671b81703e84eaa09879d3693a30a73e--%>

            <script>


                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapOption = {
                        center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                        level: 6 // 지도의 확대 레벨
                    };

                // 지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);
                var geocoder = new kakao.maps.services.Geocoder();

                var listData1 = [
                    <c:forEach items="${sellList}" var="list">
                    '${list.address}',
                    </c:forEach>
                ];

                var listData2 = [
                    <c:forEach items="${sellList}" var="list2">
                    '${list2.bldgNm}',
                    </c:forEach>
                ];

                var listData3 = [
                    <c:forEach items="${sellList}" var="list3">
                    '${list3.objAmt}',
                    </c:forEach>
                ];

                listData1.forEach(function (addr, index) {
                    let overlay;
                    geocoder.addressSearch(addr, function (result, status) {
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
                                image : markerImage
                            });

                            var content = '<div class="wrap">' +
                                '    <div class="info">' +
                                '           <div class="title">' +
                                '               <div class="bldgNm">'+'건물명  : '+ listData2[index]+ '</div>'+
                                '                <div class="close" id="overlay-btn'+index+'" title="닫기"></div>' +
                                '           </div>' +
                                '            <div class="desc">' +
                                '               <div style="width:100px;padding:3px;">' +'주소  : 서울특별시 '+ listData1[index] + '</div>'+
                                '               <div style="width:100px;padding:3px;">' +'실거래가  : '+ listData3[index] + '(만원)' +'</div>'+
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

                            // 마커를 마우스오버 했을 때 커스텀 오버레이를 표시합니다
                            kakao.maps.event.addListener(marker, 'mouseover', function() {
                                overlay.setMap(map);
                                overlay.setContent(content);
                                // document.querySelector("#overlay-btn"+index).addEventListener('click',function(){
                                //     overlay.setMap(null);
                                // })
                            });

                            // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다
                            kakao.maps.event.addListener(marker, 'mouseout', function() {
                                // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
                                overlay.setMap(null);
                            });

                            if (index == 0) {
                                map.setCenter(coords);
                            }
                        }
                    })
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
        <c:choose>
            <c:when test="${loginUser == null}">
                <h3>인기 부동산 목록</h3>

                <c:forEach var="mostInterest" items="${mostInterest}">
                    <a href="">${mostInterest.bldgNm}</a><br>
                </c:forEach>

            </c:when>
            <c:otherwise>
                <h3>최근 본 부동산 목록</h3>
            </c:otherwise>
        </c:choose>
    </div>
</div>

</body>
</html>