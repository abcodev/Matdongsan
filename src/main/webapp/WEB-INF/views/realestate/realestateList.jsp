<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<c:set var="list" value="${map.list}"/>--%>
<%--<c:set var="pi" value="${map.pi}"/>--%>
<%--<c:set var="l" value="${localList}"/>--%>
<%--<c:set var="s" value="${sellList}"/>--%>
<c:set var="r" value="com.project.common.vo.RealEstateRent"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realeatate/realestateList.css"/>">
    <jsp:include page="../template/font.jsp"/>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>부동산</title>
</head>
<body>

<script>
    window.onload = () => {
        retrieveRealEstate(1)
    }

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
                $('.place_body').html(contents);
                getMap();
            }
        });
    }
</script>
<div id="content">
    <div id="content_left">
        <div id="search_box">
            <div class="search city">
                <select name="selectOption1" id="selectOption1" onchange="get_option2(this.value)">
                    <option value="">전체</option>
                    <c:forEach var="localList" items="${localList}">
                        <option value="${localList.sggNm}">${localList.sggNm}</option>
                    </c:forEach>
                </select>
                <select name="selectOption2" id="selectOption2">
                    <option value="">전체</option>
                </select>
            </div>
            <div class="search option">
                <select name="rentType" id="rentType" onchange="optionType(this)">
                    <option value="">전체</option>
                    <option value="매매">매매</option>
                    <option value="전세">전세</option>
                    <option value="월세">월세</option>
                </select>

                <select name="rentGtn" id="rentGtn">
                    <option value="">가격(만원)</option>
                </select>

                <select name="chooseType" id="chooseType">
                    <option value="area0">면적</option>
                    <option value="area1">~ 30이하</option>
                    <option value="area2">30초과 ~ 60이하</option>
                    <option value="area3">60초과 ~ 120이하</option>
                    <option value="area4">120초과</option>
                </select>
            </div>
            <div class="btn_box">
                <button onclick="retrieveRealEstate(1)">조회</button>
            </div>
        </div>
    </div>
    <div id="content_right">
        <div class="place_body" >

        </div>
    </div>
</div>

<%--검색 동 변경--%>
<script>
    function get_option2(state) {
        $.ajax({
            type: 'GET',
            url: '${pageContext.request.contextPath}/realEstate/list/state',
            contentType: "application/json; charset=UTF-8",
            data: {
                'state': state
            },
            dataType: 'json',
            success: function (result) {
                let selectOption2 = $('#selectOption2');
                selectOption2.empty();
                selectOption2.append($("<option value=''>전체</option>"));
                for (let dong of result) {
                    selectOption2.append($("<option>" + dong + "</option>"));
                }
            }
        }).fail(function (error) {
            alert(JSON.stringify(error));
        })
    }

</script>
<script>

    function optionType(e) {

        console.log(e.value);

        if(e.value != "매매"){
            $("#rentGtn option").remove();
            $("#rentGtn").html("<option value=''>보증금(만원)</option>" +
                "<option value='range1'>1000이하</option>" +
                "<option value='range2'>1000~5000</option>" +
                "<option value='range3'>5000~10000</option>" +
                "<option value='range4'>10000~15000</option>" +
                "<option value='range5'>15000이상</option>");
        }else {
            $("#rentGtn option").remove();
            $("#rentGtn").html("<option>매매가(만원)</option>" +
                "<option value='range1'>50000이하</option>" +
                "<option value='range2'>50000~100000</option>" +
                "<option value='range3'>100000~150000</option>" +
                "<option value='range4'>150000~200000</option>" +
                "<option value='range5'>200000이상</option>");
        }

    }
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1"></script>
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
    }
</script>
</body>
</html>