<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>부동산상세페이지</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateDetailPage.css"/>">
    <jsp:include page="../template/font.jsp"/>
    <%@ include file ="../template/header.jsp" %>
</head>
<body>
<script>
    window.onload = () => {
        $.ajax({
            url: '${pageContext.request.contextPath}/realEstate/detail/interest',
            method: 'GET',
            data: {
                'estateNo': ${realEstateDetail.estateNo}
            },
            success(data) {
                $('#checkbox_heart').prop("checked", data);
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
                        url: '${pageContext.request.contextPath}/realEstate/detail/interest',
                        type: 'POST',
                        contentType: "application/json; charset=UTF-8",
                        data: JSON.stringify({
                            'estateNo': ${realEstateDetail.estateNo},
                            'isInterest': $('#checkbox_heart').is(':checked')
                        })
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
                    <th>건축년도</th>
                    <td>${realEstateDetail.buildYear}</td>
                </tr>
                <tr>
                    <th>면적</th>
                    <td> ${realEstateDetail.bldgArea} 제곱미터</td>
                </tr>
                <tr>
                    <th>층</th>
                    <td>${realEstateDetail.floor}</td>
                </tr>
                <tr>
                    <th>거래일자</th>
                    <td>${realEstateDetail.dealYmd}</td>
                </tr>
                <tr>
                    <th>금액</th>
                    <td>${realEstateDetail.gbn} / ${realEstateDetail.objAmt}</td>
                </tr>

            </table>
        </div>


        <div class="info_table foot">

            부동산 리스트 자리

        </div>
    </div>

    <div id="content_right">
        <div id="map_roadView">
            <div class="wrap_content">
                <div class="wrap_map">
                    <div id="map" style="width:80%;height:300px;">

                    </div> <!-- 지도를 표시할 div 입니다 -->
                    <div id="roadview" class="image-container" style="width:80%;height:300px;">

                    </div>
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

