
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:set var="s" value="com.project.common.vo.RealEstateSell"/>

<!DOCTYPE html>
<html lang="en">

<style>
.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
.wrap * {padding: 0;margin: 0;}
.wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
.wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
.info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
.info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
.info .close:hover {cursor: pointer;}
.info .body {position: relative;overflow: hidden;}
.info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
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
<%--                    <div class="dropdown-submenu">--%>
<%--                        <c:forEach items="${boardTypeList }" var="boardType">--%>
<%--                            <a href="${pageContext.request.contextPath}/board/list/${boardType.boardCd}">${boardType.boardName }</a>--%>
<%--                        </c:forEach>--%>
<%--                    </div>--%>

                    <div class="dropdown-submenu">
                        <a href="${pageContext.request.contextPath}/board/list/Q">자유게시판</a>
                        <a href="${pageContext.request.contextPath}/board/list/C">질문&답변</a>
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

                            var imageSrc = 'https://cdn-icons-png.flaticon.com/512/3710/3710276.png', // 마커이미지의 주소입니다
                                imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
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
                                '               <div style="width:150px;text-align:center;padding:6px 0;">' +'주소  : 서울특별시 '+ listData1[index] + '</div>'+
                                '               <div style="width:150px;text-align:center;padding:6px 0;">' +'실거래가  : '+ listData3[index] + '</div>'+
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
                            kakao.maps.event.addListener(marker, 'click', function() {
                                overlay.setMap(map);
                                overlay.setContent(content);
                                document.querySelector("#overlay-btn"+index).addEventListener('click',function(){
                                    overlay.setMap(null);
                                })
                            });


                            // 커스텀 오버레이를 닫기 위해 호출되는 함수입니다


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
            <hr>
<%--            <p><a href="https://land.naver.com/news/">부동산 관련 뉴스 더보기</a></p>--%>

        </div>
        <span><a href="https://land.naver.com/news/">부동산 관련 뉴스 더보기</a></span>
    </div>





    <div class="side lookList">
        <h3>최근 본 부동산 목록</h3>
    </div>





</div>
</div>
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