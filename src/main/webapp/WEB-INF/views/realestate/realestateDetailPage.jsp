<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>부동산상세페이지</title>
    <%@ include file="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateDetailPage.css"/>">



    <style>
        .map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
        .map_wrap {position:relative;width:100%;height:350px;}
        #category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
        #category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
        #category li.on {background: #eee;}
        #category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
        #category li:last-child{margin-right:0;border-right:0;}
        #category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
        #category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
        #category li .bank {background-position: -10px 0;}
        #category li .mart {background-position: -10px -36px;}
        #category li .pharmacy {background-position: -10px -72px;}
        #category li .cafe {background-position: -10px -144px;}
        #category li.on .category_bg {background-position-x:-46px;}
        .placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
        .placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
        .placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
        .placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
        .placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
        .placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
        .placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
        .placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
        .placeinfo .tel {color:#0f7833;}
        .placeinfo .jibun
    </style>



</head>

<body>
<div id="content">
    <div id="content_left">
        <div class="info_table head">
            <div id="name">${realEstateDetail.bldgNm}</div>
            <div id="heart">
                <input id="checkbox_heart" type="checkbox" onchange="changeHeart()">
                <label for="checkbox_heart"><i class="fa-solid fa-heart"></i></label>
            </div>
            <script>
                function changeHeart() {
                    if (${empty loginUser}) {
                        $('#checkbox_heart').prop("checked", false);
                        Swal.fire({
                            icon: 'warning',
                            title: '로그인 후 이용 가능합니다.'
                        });
                        return;
                    }
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
                    <td>${realEstateDetail.buildYear} 년</td>
                </tr>
                <tr>
                    <th>면적</th>
                    <td> ${realEstateDetail.bldgArea} (㎡)</td>
                </tr>
                <tr>
                    <th>층</th>
                    <td><fmt:parseNumber var="floor" value="${realEstateDetail.floor}"/>
                        ${floor} 층
                    </td>
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
            <div class="realtor_top"><i class="fa-regular fa-handshake"></i>
                <p>제휴 부동산</p></div>
            <div class="realtor_table">
                <c:forEach var="agent" begin="0" end="6" items="${ agentList }">
                    <div class="rno"
                         onclick="showRealtor('${ agent.agentNo }', '${ agent.agentName }')">${ agent.agentName }</div>
                </c:forEach>
            </div>
        </div>

        <%--  *************예약 모달*************  --%>
        <div class="black_bg"></div>
        <div class="modal_wrap">
            <div id="modal_content">
                <div id="content_head">
                    <div class="realtor_name" id="agent_name">부동산이름</div>
                    <div class="modal_close"><i class="fa-solid fa-xmark"></i></div>
                </div>
                <div id="content_body">
                    <div class="body_left">
                        <div class="calendar">
                            <div class="header">
                                <div class="prevDay"></div>
                                <span class="dateTitle"></span>
                                <div class="nextDay"></div>
                            </div>
                            <div class="grid dateHead">
                                <div>일</div>
                                <div>월</div>
                                <div>화</div>
                                <div>수</div>
                                <div>목</div>
                                <div>금</div>
                                <div>토</div>
                            </div>
                            <div class="grid dateBoard"></div>
                        </div>
                        <div class="time_select">
                            <span>시간</span>
                            <select id="reservationTime">
                                <option>11:00</option>
                                <option>12:00</option>
                                <option>14:00</option>
                                <option>15:00</option>
                                <option>16:00</option>
                                <option>17:00</option>
                            </select>
                        </div>
                        <div class="pCont">
                            <span>인원</span>
                            <select id="peopleCount" required>
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                <option value="4">4명</option>
                            </select>
                        </div>
                    </div>
                    <div class="body_right">
                        <div class="info_table_top">
                            <p>예약자 정보</p>
                            <span><i class="fa-solid fa-check"></i>필수입력</span>
                        </div>
                        <div class="user_info_table">
                            <div class="info name">
                                <i class="fa-solid fa-check"></i>
                                <span>이름</span>
                                <input class="rm_input" id="memberName" type="text" value="" required="required">
                            </div>
                            <div class="info phone">
                                <i class="fa-solid fa-check"></i>
                                <span>전화번호</span>
                                <input class="rm_input" id="telephone" type="text" value="" required="required">
                            </div>
                            <div class="info mail">
                                <span>이메일</span>
                                <input class="rm_input" id="email" type="email" value="">
                            </div>
                            <div class="info message">
                                <span>요청사항</span>
                                <textarea class="rm_input" id="requestText" placeholder="업체에 요청하실 내용을 적어주세요"></textarea>
                            </div>
                        </div>
                        <div class="info_table_foot">
                            <button onclick="reservation()">예약하기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div id="content_right">
        <div id="map_roadView">
            <div class="wrap_content">
                <div class="wrap_map">
                    <div id="map">

                        <ul id="category">
                            <li id="BK9" data-order="0">
                                <span class="category_bg bank"></span>
                                은행
                            </li>
                            <li id="MT1" data-order="1">
                                <span class="category_bg mart"></span>
                                마트
                            </li>
                            <li id="PM9" data-order="2">
                                <span class="category_bg pharmacy"></span>
                                약국
                            </li>
                            <li id="FD6" data-order="4">
                                <span class="category_bg cafe"></span>
                                맛집
                            </li>
                        </ul>

                    </div>

                    <div id="roadview" class="image-container">

                    </div>
                </div>
            </div>

            <script type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
            <script>


                var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}),
                    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다
                    markers = [], // 마커를 담을 배열입니다
                    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다




                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                    mapCenter = new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심 좌표
                    mapOption = {
                        center: mapCenter, // 지도의 중심 좌표
                        level: 5 // 지도의 확대 레벨
                    };

                // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
                var map = new kakao.maps.Map(mapContainer, mapOption);
                var geocoder = new kakao.maps.services.Geocoder();

                geocoder.addressSearch('${realEstateDetail.address}', function (result, status) {

                    // 정상적으로 검색이 완료됐으면
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



                        // 인포윈도우로 장소에 대한 설명을 표시합니다
                        var infowindow = new kakao.maps.InfoWindow({
                            content: '<div style="width:150px;text-align:center;padding:6px 0;">${realEstateDetail.bldgNm}</div>'
                        });
                        infowindow.open(map, marker);

                        // 지도의 중심을 결과값으로 받은 위치로 이동
                        map.setCenter(coords);
                    }
                });









                var ps = new kakao.maps.services.Places(map);

                // 지도에 idle 이벤트를 등록합니다
                kakao.maps.event.addListener(map, 'idle', searchPlaces);

                // 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다
                contentNode.className = 'placeinfo_wrap';

                // 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
                // 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다
                addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
                addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

                // 커스텀 오버레이 컨텐츠를 설정합니다
                placeOverlay.setContent(contentNode);

                // 각 카테고리에 클릭 이벤트를 등록합니다
                addCategoryClickEvent();

                // 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
                function addEventHandle(target, type, callback) {
                    if (target.addEventListener) {
                        target.addEventListener(type, callback);
                    } else {
                        target.attachEvent('on' + type, callback);
                    }
                }

                // 카테고리 검색을 요청하는 함수입니다
                function searchPlaces() {
                    if (!currCategory) {
                        return;
                    }

                    // 커스텀 오버레이를 숨깁니다
                    placeOverlay.setMap(null);

                    // 지도에 표시되고 있는 마커를 제거합니다
                    removeMarker();

                    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true});
                }

                // 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
                function placesSearchCB(data, status, pagination) {
                    if (status === kakao.maps.services.Status.OK) {

                        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
                        displayPlaces(data);
                    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
                        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

                    } else if (status === kakao.maps.services.Status.ERROR) {
                        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

                    }
                }

                // 지도에 마커를 표출하는 함수입니다
                function displayPlaces(places) {

                    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
                    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
                    var order = document.getElementById(currCategory).getAttribute('data-order');



                    for ( var i=0; i<places.length; i++ ) {

                        // 마커를 생성하고 지도에 표시합니다
                        var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);

                        // 마커와 검색결과 항목을 클릭 했을 때
                        // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
                        (function(marker, place) {
                            kakao.maps.event.addListener(marker, 'click', function() {
                                displayPlaceInfo(place);
                            });
                        })(marker, places[i]);
                    }
                }

                // 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
                function addMarker(position, order) {
                    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
                        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
                        imgOptions =  {
                            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
                            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
                            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
                        },
                        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                        marker = new kakao.maps.Marker({
                            position: position, // 마커의 위치
                            image: markerImage
                        });

                    marker.setMap(map); // 지도 위에 마커를 표출합니다
                    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

                    return marker;
                }

                // 지도 위에 표시되고 있는 마커를 모두 제거합니다
                function removeMarker() {
                    for ( var i = 0; i < markers.length; i++ ) {
                        markers[i].setMap(null);
                    }
                    markers = [];
                }

                // 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
                function displayPlaceInfo (place) {
                    var content = '<div class="placeinfo">' +
                        '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';

                    if (place.road_address_name) {
                        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
                            '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
                    }  else {
                        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
                    }

                    content += '    <span class="tel">' + place.phone + '</span>' +
                        '</div>' +
                        '<div class="after"></div>';

                    contentNode.innerHTML = content;
                    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
                    placeOverlay.setMap(map);
                }


                // 각 카테고리에 클릭 이벤트를 등록합니다
                function addCategoryClickEvent() {
                    var category = document.getElementById('category'),
                        children = category.children;

                    for (var i=0; i<children.length; i++) {
                        children[i].onclick = onClickCategory;
                    }
                }

                // 카테고리를 클릭했을 때 호출되는 함수입니다
                function onClickCategory() {
                    var id = this.id,
                        className = this.className;

                    placeOverlay.setMap(null);

                    if (className === 'on') {
                        currCategory = '';
                        changeCategoryClass();
                        removeMarker();
                    } else {
                        currCategory = id;
                        changeCategoryClass(this);
                        searchPlaces();
                    }
                }

                // 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
                function changeCategoryClass(el) {
                    var category = document.getElementById('category'),
                        children = category.children,
                        i;

                    for ( i=0; i<children.length; i++ ) {
                        children[i].className = '';
                    }

                    if (el) {
                        el.className = 'on';
                    }
                }

























                var roadviewContainer = document.getElementById('roadview'); //로드뷰를 표시할 div
                var roadview = new kakao.maps.Roadview(roadviewContainer); //로드뷰 객체
                var roadviewClient = new kakao.maps.RoadviewClient(); //좌표로부터 로드뷰 파노ID를 가져올 로드뷰 helper객체

                function Roadview() {
                    // 주소로 좌표를 검색합니다
                    geocoder.addressSearch('${realEstateDetail.address}', function (result, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === kakao.maps.services.Status.OK) {
                            var position = new kakao.maps.LatLng(result[0].y, result[0].x);
                            // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
                            var rvResetValue = {};
                            roadviewClient.getNearestPanoId(position, 500, function (panoId) {
                                roadview.setPanoId(panoId, position); //panoId와 중심좌표를 통해 로드뷰 실행
                                rvResetValue.panoId = panoId;
                            });

                            setTimeout(rvMarker, 1500);

                            function rvMarker() {

                                var imageSrc = '	https://cdn-icons-png.flaticon.com/128/4974/4974596.png', // 마커이미지의 주소입니다
                                    imageSize = new kakao.maps.Size(60, 60), // 마커이미지의 크기입니다
                                    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

                                // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)

                                // 마커 생성
                                var rMarker = new kakao.maps.Marker({
                                    map: roadview,
                                    position: position,
                                    image : markerImage
                                });


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

<%--*****************예약******************--%>
<script>

    let resercationAgentNo = null;

    function showRealtor(agentNo, agentName) {
        if (${empty loginUser}) {
            Swal.fire({
                icon: 'warning',
                title: '로그인 후 이용 가능합니다.'
            });
            return false;

        }
        $('#agent_name').html(agentName);
        resercationAgentNo = agentNo;
        document.querySelector('.modal_wrap').style.display = 'block';
        document.querySelector('.black_bg').style.display = 'block';
    }

    window.onload = function () {
        if(${not empty loginUser}){
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

        document.querySelector('.modal_close').addEventListener('click', offClick);
        document.querySelector('.black_bg').addEventListener("click", offClick);
    };

    function offClick() {
        document.querySelector('.modal_wrap').style.display = 'none';
        document.querySelector('.black_bg').style.display = 'none';
        $(".rm_input").val("");
        reservationDate = "";
        removeClick.forEach((e) => {
            e.classList.remove("click");
        });
        $('select').find('option:first').attr('selected', 'selected');

    }



    let reservationDate = "";

    // 달력 생성
    const makeCalendar = (date) => {
        // 현재 년도와 월 받아오기
        const currentDate = new Date(date);
        const currentYear = currentDate.getFullYear();
        const currentMonth = currentDate.getMonth() + 1;

        // 첫날의 요일 구하기 - 초기 시작위치를 위해서
        const firstDay = new Date(date.setDate(1)).getDay();
        // 마지막 날짜 구하기
        const lastDay = new Date(currentYear, currentMonth, 0).getDate();

        // 남은 박스만큼 다음달 날짜 표시
        const limitDay = firstDay + lastDay;
        const nextDay = Math.ceil(limitDay / 7) * 7;

        let htmlDummy = '';

        // 한달전 날짜 표시하기
        for (let i = 0; i < firstDay; i++) {
            htmlDummy += '<div class="noColor"></div>';
        }

        // 이번달 날짜 표시하기
        for (let i = 1; i <= lastDay; i++) {
            if (i < currentDate.getDate()) {
                htmlDummy += '<div onclick="Swal.fire(\'과거 일정은 선택할 수 없습니다!\')">' + i + '</div>';
            } else {
                htmlDummy += '<div class="non-click" onclick="test(' + currentYear + ', ' + currentMonth + ', ' + i + ')">' + i + '</div>';
            }
        }


        // 다음달 날짜 표시하기
        for (let i = limitDay; i < nextDay; i++) {
            htmlDummy += '<div class="noColor"></div>';
        }

        document.querySelector('.dateBoard').innerHTML = htmlDummy;
        document.querySelector('.dateTitle').innerText = currentYear + '년 ' + currentMonth + '월';

        // 날짜 선택시 색상 고정
        const nonClick = document.querySelectorAll(".non-click");
        removeClick = nonClick;
        function handleClick(event) {
            // div에서 모든 "click" 클래스 제거
            nonClick.forEach((e) => {
                e.classList.remove("click");
            });
            // 클릭한 div만 "click"클래스 추가
            event.target.classList.add("click");
        }

        nonClick.forEach((e) => {
            e.addEventListener("click", handleClick);
        });
    }
    let removeClick=null;

    function test(year, month, day) {
        console.log(year, month, day);
        if (month < 10) {
            month = "0" + month;
        }
        if (day < 10) {
            day = "0" + day;
        }
        reservationDate = year + '-' + month + '-' + day;
    }

    const date = new Date();
    makeCalendar(date);

    // 이전달 이동
    document.querySelector('.prevDay').onclick = () => {
        makeCalendar(new Date(date.setMonth(date.getMonth() - 1)));
    }

    // 다음달 이동
    document.querySelector('.nextDay').onclick = () => {
        makeCalendar(new Date(date.setMonth(date.getMonth() + 1)));
    }

    // 예약하기
    function reservation() {
        let time = $('#reservationTime').val();
        let people = $('#peopleCount').val();
        let memberName = $('#memberName').val();
        let phone = $('#telephone').val();
        let email = $('#email').val();
        let requestText = $('#requestText').val();

        // required 검사
        if (reservationDate == "") {
            Swal.fire({
                icon: 'warning',
                title: '날짜를 입력해 주세요.'
            });
            return false;
        } else if (memberName == "") {
            Swal.fire({
                icon: 'warning',
                title: '이름을 입력해 주세요.'
            });
            $('#memberName').focus();
            return false;
        } else if (phone == "") {
            Swal.fire({
                icon: 'warning',
                title: '휴대폰 번호를 입력해 주세요.'
            });
            $('#telephone').focus();
            return false;
        } else {
            const formData = new FormData();
            formData.append("agentNo", resercationAgentNo)
            formData.append("memberName", memberName);
            formData.append("peopleCount", people);
            formData.append("phone", phone);
            formData.append("email", email);
            formData.append("requestText", requestText);
            formData.append("revTime", time);
            formData.append("revDate", reservationDate);

            $.ajax({
                url: "${pageContext.request.contextPath}/reservation/enroll",
                type: "POST",
                data: formData,
                processData: false,
                contentType: false,
                success: () => {
                    Swal.fire({
                        icon: 'success',
                        title: '예약에 성공 하였습니다.'
                    });
                    offClick();

                },
                error: () => {
                    Swal.fire({
                        icon: 'error',
                        title: '예약에 실패 하였습니다.'
                    });
                }
            })
        }
    }
</script>
</body>
</html>



