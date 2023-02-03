<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="r" value="com.project.common.vo.RealEstateRent"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateList.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <jsp:include page="../template/font.jsp"/>
    <title>부동산</title>
    <%@ include file ="../template/header.jsp" %>

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
                $('#search_list').html(contents);
                getMap();
            }
        });
    }

    function searchList(){
        $.ajax({
            url : '${pageContext.request.contextPath}/realEstate',
            method : 'GET',
            data :{
               // 'cpage': current_page,
                'state': $('#selectOption1 option:checked').val(),
                'dong': $('#selectOption2 option:checked').val(),
                'rentType': $('#rentType option:checked').val(),
                'rentGtn': $('#rentGtn option:checked').val(),
                'chooseType': $('#chooseType option:checked').val() },
            success : function (data){
                console.log(data);
            }

        })
    }
</script>
<div id="content">
    <div id="content_left">
        <div id="search_box">
            <div class="search city">
                <select name="selectOption1" id="selectOption1" onchange="get_option2(this.value)">
                    <option value="">전체</option>
                    <c:forEach var="localList" items="${localList}">
                        <option value="${localList}">${localList}</option>
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
                <button onclick="retrieveRealEstate(1); searchList();">조회</button>
            </div>
        </div>
    </div>
    <div id="content_right">
        <div class="place_body" >
            <div id="search_map">


            </div>
            <div id="search_list">

            </div>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
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

        var listData1 = [
            <c:forEach items="${estateRentList}" var="list">
            '${list.address}',
            </c:forEach>
        ];

        var listData2 = [
            <c:forEach items="${estateRentList}" var="list2">
            '${list2.buildName}',
            </c:forEach>
        ];


        listData1.forEach(function (addr, index) {
            let overlay;
            geocoder.addressSearch(addr, function (result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    var imageSrc = '   https://cdn-icons-png.flaticon.com/128/4974/4974596.png', // 마커이미지의 주소입니다
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
                        '               <div class="bldgNm">'+ listData2[index]+ '</div>'+
                        '                <div class="close" id="overlay-btn'+index+'" title="닫기"></div>' +
                        '           </div>' +
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

        // 지도에 마커와 인포윈도우를 표시하는 함수입니다
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
    }

</script>
</body>
</html>