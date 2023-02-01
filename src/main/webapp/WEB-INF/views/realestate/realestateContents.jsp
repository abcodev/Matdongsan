<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateList.css"/>">
<jsp:include page="../template/font.jsp"/>

<div id="estate_rent_list_ajax">
    <div id="search_map">


    </div>

    <div id="search_list">
        <table class="table">
            <tr>
                <th>자치구명</th>
                <th>아파트명</th>
                <th>거래 타입</th>
                <th>금액</th>
                <th>임대면적</th>
            </tr>
            <%--            <c:if test="${estateRentList} == null">--%>
            <%--                <tr>--%>
            <%--                    <td colspan="5">검색결과가 없습니다.</td>--%>
            <%--                </tr>--%>
            <%--            </c:if>--%>
            <c:forEach var="estateRent" items="${ estateRentList }">
                <tr onclick="location.href='realEstate/detail?estateNo=${estateRent.estateNo}'">
                    <td class="rno" >${ estateRent.sggNm } </td>
                    <td>${estateRent.buildName }</td>
                    <td>${estateRent.rentGbn}</td>
                    <td>${estateRent.rentGtn}</td>
                    <td>${estateRent.rentArea }</td>
                </tr>
            </c:forEach>

        </table>
    </div>

    <div id="paging">

        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" onclick="retrieveRealEstate(${pi.currentPage - 1})">Previous</a>
                    </li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" onclick="retrieveRealEstate(${item})">${item }</a></li>
            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link"
                                             onclick="retrieveRealEstate(${pi.currentPage + 1})">Next</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>

<script>
    function retrieveRealEstate(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/realEstate/list',
            method: 'GET',
            data: {
                'cpage': current_page,
                'state': $('#selectOption1 option:checked').val(),
                'dong': $('#selectOption2 option:checked').val(),
                'rentType': $('#rentType option:checked').val(),
                'rentGtn': $('#rentGtn option:checked').val(),
                'chooseType': $('#chooseType option:checked').val()
            },
            success(data) {
                const html = jQuery('<div>').html(data);
                const contents = html.find('div#estate_rent_list_ajax').html()
                $('.place_body').html(contents)
            }
        });
    }
</script>

<%--지도 관련 스크립트--%>
<script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
<script>
    function getMap(){

        var mapContainer = document.getElementById('search_map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                level: 6 // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);
        var geocoder = new kakao.maps.services.Geocoder();
        var listData = [
            <c:forEach items="${estateRentList}" var="list">
            '${list.buildName}',
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
    }


</script>