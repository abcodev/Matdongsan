<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부동산상세페이지</title>
    <link rel="stylesheet" href="../css/realEstate/realestateDetailPage.css">
    <jsp:include page="../template/font.jsp"/>
    <jsp:include page="../template/header.jsp" />
</head>
<body>
<div id="content">
    <div id="content_left">
        <div class="info_table head">
            <div id="name">건물명</div>
            <div id="heart"><input type="checkbox"> 관심목록 </div>
        </div>



        <div class="info_table body">
            <table>
                <tr>
                    <td>상세주소 : ${realEstateDetail.address}</td>
                    <td>면적 : </td>
                    <td>거래일자 : ${realEstateDetail.dealYmd}</td>
                    <td>금액 : ${realEstateDetail.objAmt}</td>
                    <td>건축년도</td>
                </tr>

            </table>
        </div>


        <div class="info_table foot">
                <table>
                    <tr>
                        <th>거래일자</th>
                        <th>구분</th>
                        <th>면적</th>
                        <th>금액</th>
                        <c:forEach var="" items="">
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </c:forEach>
                    </tr>
                </table>
        </div>



    </div>

    <div id="content_right">
        <div id="map_roadView">

            <div id="map" style="width:100%;height:300px"></div> <!-- 지도를 표시할 div 입니다 -->
            <div id="roadview" style="width:100%;height:300px"></div> <!-- 로드뷰를 표시할 div 입니다 -->


            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
            <script>
                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapCenter = new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심 좌표
                    mapOption = {
                        center: mapCenter, // 지도의 중심 좌표
                        level: 4 // 지도의 확대 레벨
                    };

                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);

                // var myPosition = new kakao.maps.LatLng(37.50060595890094, 127.03641515171977);



                var geocoder = new kakao.maps.services.Geocoder();

                // 주소로 좌표를 검색합니다
                geocoder.addressSearch('${realEstateDetail.address}', function(result, status) {

                    // 정상적으로 검색이 완료됐으면
                    if (status === kakao.maps.services.Status.OK) {

                        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                        // 결과값으로 받은 위치를 마커로 표시합니다
                        var marker = new kakao.maps.Marker({
                            map: map,
                            position: coords
                        });

                        // 지도에 올릴 장소명 인포윈도우 입니다.
                        var mLabel = new kakao.maps.InfoWindow({
                            position: myPosition, // 지도의 중심좌표에 올립니다.
                            content: '내가 일하는 곳' // 인포윈도우 내부에 들어갈 컨텐츠 입니다.
                        });
                        mLabel.open(map, mMarker); // 지도에 올리면서, 두번째 인자로 들어간 마커 위에 올라가도록 설정합니다.

                        var rvContainer = document.getElementById('roadview'); // 로드뷰를 표시할 div

                        var rv = new kakao.maps.Roadview(rvContainer); // 로드뷰 객체 생성
                        var rc = new kakao.maps.RoadviewClient(); // 좌표를 통한 로드뷰의 panoid를 추출하기 위한 로드뷰 help객체 생성


                        var rvPosition = new kakao.maps.LatLng(result[0].y, result[0].x);


                        rc.getNearestPanoId(rvPosition, 50, function(panoid) {
                            rv.setPanoId(panoid, rvPosition);//좌표에 근접한 panoId를 통해 로드뷰를 실행합니다.
                        });

                        // 로드뷰 초기화 이벤트
                        kakao.maps.event.addListener(rv, 'init', function() {

                            // 로드뷰에 올릴 마커를 생성합니다.
                            var rMarker = new kakao.maps.Marker({
                                position: myPosition,
                                map: rv //map 대신 rv(로드뷰 객체)로 설정하면 로드뷰에 올라갑니다.
                            });
                            rMarker.setAltitude(6); //마커의 높이를 설정합니다. (단위는 m입니다.)
                            rMarker.setRange(100); //마커가 보일 수 있는 범위를 설정합니다. (단위는 m입니다.)

                            // 로드뷰에 올릴 장소명 인포윈도우를 생성합니다.
                            var rLabel = new kakao.maps.InfoWindow({
                                content: '${realEstateDetail.bldgNm}'
                            });
                            rLabel.setRange(100); //마커가 보일 수 있는 범위를 설정합니다. (단위는 m입니다.)
                            rLabel.open(rv, rMarker); // open시 마커를 넣어주면, 마커의 altitude와 position값을 모두 따라 갑니다.

                            // 로드뷰 마커가 중앙에 오도록 로드뷰의 viewpoint 조정합니다.
                            var projection = rv.getProjection(); // viewpoint(화면좌표)값을 추출할 수 있는 projection 객체를 가져옵니다.

                            // 마커의 position과 altitude값을 통해 viewpoint값(화면좌표)를 추출합니다.
                            var viewpoint = projection.viewpointFromCoords(rMarker.getPosition(), rMarker.getAltitude());
                            rv.setViewpoint(viewpoint); //로드뷰에 뷰포인트를 설정합니다.
                        });


                    }
                });


            </script>



        </div>
    </div>
</div>
</body>
</html>

