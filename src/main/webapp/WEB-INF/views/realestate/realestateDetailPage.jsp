<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부동산상세페이지</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateDetailPage.css"/>">
    <jsp:include page="../template/font.jsp"/>
    <%@ include file ="../template/header.jsp" %>


<%--    <style>--%>
<%--        .screen_out {display:block;overflow:hidden;position:absolute;left:-9999px;width:1px;height:1px;font-size:0;line-height:0;text-indent:-9999px}--%>
<%--        .wrap_content {overflow:hidden;height:auto;}--%>
<%--        .wrap_map {width:50%;height:300px;float:top;position:relative}--%>
<%--        .wrap_button {position:absolute;left:15px;top:12px;z-index:2}--%>
<%--        .btn_comm {float:left;display:block;width:70px;height:27px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/sample_button_control.png) no-repeat}--%>
<%--        .btn_linkMap {background-position:0 0;}--%>
<%--        .btn_resetMap {background-position:-69px 0;}--%>

<%--    </style>--%>

</head>
<body>
<script>
    window.onload = () => {
        $.ajax({
            url: '${pageContext.request.contextPath}/realEstateDetail/like', // TODO : 변경 필요
            method: 'GET',
            data: {
                'estateNo': 11835 // TODO : 변경 필요
            },
            success(data) {
                if (data === true) {
                    $('#checkbox_heart').checked = true
                }
            }
        });
    }
</script>
<div id="content">
    <div id="content_left">
        <div class="info_table head">
            <div id="name">건물명</div>
            <div id="heart"><input id="checkbox_heart" type="checkbox" onchange="changeHeart()"> 관심목록 </div>
            <script>
                function changeHeart() {
                    $.ajax({
                        url: '${pageContext.request.contextPath}/realEstateDetail/like', // TODO : 변경 필요
                        method: 'POST',
                        data: {
                            'estateNo': 11835, // TODO : 변경 필요
                            'like':  $('#checkbox_heart option:checked').val()
                        }
                    });
                }
            </script>
        </div>

        <div class="info_table body">
            <table>
                <tr>
                    <th>상세주소</th>
                    <td>${realEstateDetail.address}</td>
                </tr>
                <tr>
                    <th>면적</th>
                    <td> ${realEstateDetail.bldgArea} 제곱미터</td>
                </tr>
                <tr>
                    <th>거래일자</th>
                    <td>${realEstateDetail.dealYmd}</td>
                </tr>
                <tr>
                    <th>금액</th>
                    <td>${realEstateDetail.gbn} / ${realEstateDetail.objAmt}</td>
                </tr>
                <tr>
                    <th></th>
                    <td></td>
                </tr>
            </table>
        </div>


        <div class="info_table foot">
<%--            이름이 같은 아파트 or 주소가 같은 아파트 뽑아와야함--%>
                <table>
                    <tr>
                        <th>거래일자</th>
                        <th>구분</th>
                        <th>면적</th>
                        <th>금액</th>
<%--                        <c:forEach var="" items="">--%>
<%--                            <td></td>--%>
<%--                            <td></td>--%>
<%--                            <td></td>--%>
<%--                            <td></td>--%>
<%--                        </c:forEach>--%>
                    </tr>
                </table>
        </div>
    </div>

    <div id="content_right">
        <div id="map_roadView">
            <div class="wrap_content">
                <div class="wrap_map">
                    <div id="map" style="width:80%;height:300px;"></div> <!-- 지도를 표시할 div 입니다 -->
<%--                    <div class="wrap_button">--%>
<%--                        <a href="javascript:;" class="btn_comm btn_linkMap" target="_blank" onclick="moveKakaoMap(this)"><span class="screen_out">지도 크게보기</span></a> <!-- 지도 크게보기 버튼입니다 -->--%>
<%--                        <a href="javascript:;" class="btn_comm btn_resetMap" onclick="resetKakaoMap()"><span class="screen_out">지도 초기화</span></a> <!-- 지도 크게보기 버튼입니다 -->--%>
<%--                    </div>--%>
                </div>

                <div id="roadview" class="image-container" style="width:80%;height:300px;">

                </div>

            </div>

            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapCenter = new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심 좌표
                    mapOption = {
                        center: mapCenter, // 지도의 중심 좌표
                        level: 4 // 지도의 확대 레벨
                    };

                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);
                var geocoder = new kakao.maps.services.Geocoder();

                geocoder.addressSearch('${realEstateDetail.address}', function(result, status) {

                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {

                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords
                        });

                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                        var infowindow = new kakao.maps.InfoWindow({
                            content: '<div style="width:150px;text-align:center;padding:6px 0;">${realEstateDetail.bldgNm}</div>'
                        });
                        infowindow.open(map, marker);

                        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                        map.setCenter(coords);
                    }
                });




                var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
                var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
                var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

                function Roadview (){
                    // 주소로 좌표를 검색합니다
                    geocoder.addressSearch('${realEstateDetail.address}', function(result, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === kakao.maps.services.Status.OK) {
                            var position = new kakao.maps.LatLng(result[0].y, result[0].x);
                            // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
                            roadviewClient.getNearestPanoId(position, 500, function(panoId) {
                                roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
                                rvResetValue.panoId = panoId;
                            });

                            setTimeout(rvMarker, 1500);
                            function rvMarker() {
                                // 로드뷰에 올릴 마커를 생성합니다.
                                var rMarker = new kakao.maps.Marker({
                                    position: position,
                                    map: roadview //map 대신 roadview(로드뷰 객체)로 설정하면 로드뷰에 올라갑니다.
                                });

                                // 로드뷰에 올릴 장소명 인포윈도우를 생성합니다.
                                var rLabel = new kakao.maps.InfoWindow({
                                    position: position,
                                    content: '${realEstateDetail.bldgNm}'
                                });
                                rLabel.open(roadview, rMarker);

                                // 로드뷰 마커가 중앙에 오도록 로드뷰의 viewpoint 조정 합니다.
                                var projection = roadview.getProjection(); // viewpoint(화면좌표)값을 추출할 수 있는 projection 객체를 가져옵니다.

                                // 마커의 position과 altitude값을 통해 viewpoint값(화면좌표)를 추출합니다.
                                var viewpoint = projection.viewpointFromCoords(rMarker.getPosition(), rMarker.getAltitude());
                                roadview.setViewpoint(viewpoint); //로드뷰에 뷰포인트를 설정합니다.
                            }
                        }
                    });
                }

                Roadview();

            </script>

        </div>
    </div>
</div>
</body>
</html>

