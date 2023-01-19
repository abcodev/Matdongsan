<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<c:set var="l" value="${localList}"/>
<c:set var="r" value="com.project.common.vo.RealEstateRent"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realeatate/realestateList.css"/>">
    <jsp:include page="../template/font.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>부동산</title>
</head>
<body>
<div id="content">
    <div id="content_left">
        <form name="searchArea" action="">
            <div id="search_box">
                <div class ="search city">
                    <select name="selectOption1" id="selectOption1" onchange="get_option2(selectOption1.value, selectOption2)">
                        <option value="option1">자치구 선택</option>
                        <c:forEach var="l" items="${localList}">
                            <option value="${l.sggNm}">${l.sggNm}</option>
                        </c:forEach>
                    </select>
                    <select name="selectOption2" id="selectOption2">
                        <option value="total">전체</option>

                    </select>
                </div>
                <div class ="search option">
                    <select name="rentType" id="rentType">
                        <option value="selectA">매매</option>
                        <option value="selectB">전세</option>
                        <option value="selectC">월세</option>
                    </select>

                    <select name="rentGtn">
                        <c:choose>
                            <c:when test="$(#rentType).selected == 'selectA'">
                                <option value="charge0">실거래가(만원)</option>
                                <option value="level1">~ 50000이하</option>
                                <option value="level2">50000초과 ~ 100000이하</option>
                                <option value="level3">100000초과 ~ 20000이하</option>
                                <option value="level4">200000초과</option>
                            </c:when>
                            <c:otherwise>
                                <option value="level0">보증금(만원)</option>
                                <option value="level1">~ 1000이하</option>
                                <option value="level2">1000초과 ~ 5000이하</option>
                                <option value="level3">5000초과 ~ 10000이하</option>
                                <option value="level4">10000초과</option>
                            </c:otherwise>
                        </c:choose>
                    </select >

                    <select name="chooseType">
                        <c:choose>
                            <c:when test="$(#rentType).selected == 'selectC'">
                                <option value="fee0">임대료(만원)</option>
                                <option value="fee1">~ 10이하</option>
                                <option value="fee2">10초과 30이하</option>
                                <option value="fee3">30초과 60이하</option>
                                <option value="fee4">60초과 100이하</option>
                                <option value="fee5">100초과</option>
                            </c:when>
                            <c:otherwise>
                                <option value="area0">면적</option>
                                <option value="area1">~ 30이하</option>
                                <option value="area2">30초과 ~ 60이하</option>
                                <option value="area3">60초과 ~ 120이하</option>
                                <option value="area4">120초과</option>
                            </c:otherwise>
                        </c:choose>
                    </select>
                </div>
                <div class="btn_box">
                    <button type="submit">조회</button>
                </div>
            </div>
        </form>
        <div id="place">

        </div>
    </div>
    <div id="content_right">
        <div id="search_map">

        </div>
        <div id="search_list">
            <table class="table">
                <tr>
                    <th>자치구명</th>
                    <th>아파트명</th>
                    <th>거래일자</th>
                    <th>금액</th>
                    <th>임대면적</th>
                </tr>
                <c:forEach var="r" items="${ list }">
                    <tr>
                        <td class="rno">${ r.sggNm }</td>
                        <td>${r.buildName }</td>
                        <td>${r.dealYmd }</td>
                        <td>${r.rentGtn}</td>
                        <td>${r.rentArea }</td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <div id="paging">
            <c:set var="url" value="?currentPage="/>
            <ul class="pagination">
                <c:choose>
                <c:when test="${pi.currentPage eq 1 }">
                <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                </c:when>
                <c:otherwise>
                <li class="page-item"><a class="page-link" href="${url}${pi.currentPage-1 }${sUrl}">Previous</a></li>
                </c:otherwise>
                </c:choose>

                <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" href="${url}${item }${sUrl}">${item }</a></li>
                </c:forEach>

                <c:choose>
                <c:when test="${pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                <li class="page-item"><a class="page-link" href="${url}${pi.currentPage+1 }${sUrl}">Next</a></li>
                </c:otherwise>
                </c:choose>
        </div>
    </div>
</div>

<%--검색 동 변경--%>
<script>
    function get_option2(option1, selectOption) {
        $.ajax({
            type: 'GET',
            url: '${pageContext.request.contextPath}/',
            contentType: "application/json; charset=UTF-8",
            dataType: 'json',
            success: function (result) {
                console.log(result)

            }
        }).fail(function (error) {
            alert(JSON.stringify(error));
        })
    }
</script>

<%--지도 관련 스크립트--%>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1"></script>
<script>
    const container = document.getElementById('search_map'); //지도를 담을 영역의 DOM 레퍼런스
    let options = { //지도를 생성할 때 필요한 기본 옵션
        center: new kakao.maps.LatLng(37.566826, 126.9786567), //지도의 중심좌표.
        level: 3 //지도의 레벨(확대, 축소 정도)
    };
    let map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

    // HTML5의 geolocation으로 사용할 수 있는지 확인
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

    // 지도에 마커와 인포윈도우를 표시하는 함수
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
            content : iwContent,
            removable : iwRemoveable
        });

        // 인포윈도우를 마커위에 표시
        infowindow.open(map, marker);

        // 지도 중심좌표를 접속위치로 변경
        map.setCenter(locPosition);
    }
</script>

</body>
</html>