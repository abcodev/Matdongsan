<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>부동산 리스트</title>
    <%@ include file ="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateList.css"/>">
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.9.1/dist/chart.min.js"></script>
    <jsp:include page="../template/font.jsp"/>


</head>
<body>
<script>
    window.onload = () => {
        retrieveRealEstate(1)
        getMap()
        basicChart()
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
                const freeContents = html.find('div#selectFboard').html()
                $('#search_list').html(contents);
                $('.freeBoard').html(freeContents);
            }
        });
    }

    function searchList(current_page){
        var address = [];
        var subAddress = [];
        var buildName = [];
        var feeAvg;

        $.ajax({
            url : '${pageContext.request.contextPath}/realEstate/map',
            method : 'GET',
            async: false,
            contentType: "application/json; charset=UTF-8",
            dataType: 'json',
            data :{
                'cpage': current_page,
                'state': $('#selectOption1 option:checked').val(),
                'dong': $('#selectOption2 option:checked').val(),
                'rentType': $('#rentType option:checked').val(),
                'rentGtn': $('#rentGtn option:checked').val(),
                'chooseType': $('#chooseType option:checked').val() },
            success : function (result){
                console.log(result);

                // 필요한  데이터별로 가공처리
                // array.map() --> list데이터로부터 내가 원하는 형태의 데이터로 가공해서 값을 반환가능
                address = result.map(function (obj){
                    return obj.address;
                });

                subAddress = result.map(function (obj){
                    return obj.subAddress;
                });

                buildName = result.map(function (obj){
                    return obj.buildName;
                });

                feeAvg = result[result.length-1]

                searchResultMap(address, subAddress, buildName);
                showChart(feeAvg);
            }

        })
    }
</script>
<div id="content">
    <div id="content_left">
        <div id="search_box">
            <div class="search city">
                <select name="selectOption1" id="selectOption1" onchange="get_option2(this.value)">
                    <option value="">자치구 선택</option>
                    <c:forEach var="localList" items="${localList}">
                        <option value="${localList}">${localList}</option>
                    </c:forEach>
                </select>
                <select name="selectOption2" id="selectOption2">
                    <option value="">동 선택</option>
                </select>
            </div>
            <div class="search option">
                <select name="rentType" id="rentType" onchange="optionType(this)">
                    <option value="">거래 타입</option>
                    <option value="매매">매매</option>
                    <option value="전세">전세</option>
                    <option value="월세">월세</option>
                </select>

                <select name="rentGtn" id="rentGtn">
                    <option value="">거래 가격(만원)</option>
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
        <div class="table_area">
            <div class="estate_table">
                <canvas id="myChart" width="400" height="270"></canvas>
            </div>
        </div>
        <div class="freeBoard_area">
            <div class="freeBoard">

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
            Swal.fire({
                icon: 'error',
                title: JSON.stringify(error)
            });
            // alert(JSON.stringify(error));
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

<script>
    function basicChart(){
        var rentAvg = ${seoulAvg.totalRentAvg};
        var sellAvg = ${seoulAvg.totalSellAvg};

        var ctx = document.getElementById('myChart').getContext('2d');
        var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['전세가격','매매가격'],
                datasets: [{
                    label: '서울시 평균 가격(만원)',
                    backgroundColor: [
                        'rgba(133,145,238,0.32)',
                        'rgba(243,144,165,0.39)'
                    ],
                    borderColor: [
                        'rgb(133,145,238)',
                        'rgb(243,144,165)'
                    ],
                    data: [rentAvg ,sellAvg],
                    borderWidth: 1
                }]
            },
            options : {
                responsive: false,
                scale: {
                    y: {
                        afterDataLimits: (scale) => {
                            // y축의 최대값은 데이터의 최대값에 딱 맞춰져서 그려지므로
                            // y축 위쪽 여유공간이 없어 좀 답답한 느낌이 들 수 있는데요,
                            // 이와 같이 afterDataLimits 콜백을 사용하여 y축의 최대값을 좀 더 여유있게 지정할 수 있습니다!
                            scale.max = scale.max * 1.1;
                        },
                        axis: 'y', // 이 축이 y축임을 명시해줍니다.
                        display: true, // 축의 가시성 여부도 설정할 수 있습니다.
                        position: 'left',
                        scaleLabel: {
                            display: true,
                            labelString: "만원"
                        }
                    }
                }
            }
        });
    }


    function showChart(feeAvg){
        $("canvas#myChart").remove();
        $("div.estate_table").append('<canvas id="myChart"></canvas>');

        var rentFee = $('#selectOption1 option:checked').val();

        var ctx = document.getElementById('myChart').getContext('2d');

        var chart = new Chart(ctx, {
            // type : 'bar' = 막대차트를 의미합니다.
            type: 'bar',
            data: {
                labels: ['평균 전세가격','평균 매매 가격'],
                datasets: [
                    {
                        type: 'bar',
                        label: '서울시',
                        backgroundColor: 'rgba(133,145,238,0.32)',
                        data: [feeAvg.totalRentAvg, feeAvg.totalSellAvg],
                        borderColor: 'rgb(133,145,238)',
                        borderWidth: 1,
                    },
                    {
                        type: 'bar',
                        label: rentFee,
                        backgroundColor: 'rgba(243,144,165,0.39)',
                        data: [feeAvg.rentAvg, feeAvg.sellAvg],
                        borderColor: 'rgb(243,144,165)',
                        borderWidth: 1
                    }]
            },
            options : {
                scale : {
                    y:{afterDataLimits: (scale) => {
                            // y축의 최대값은 데이터의 최대값에 딱 맞춰져서 그려지므로
                            // y축 위쪽 여유공간이 없어 좀 답답한 느낌이 들 수 있는데요,
                            // 이와 같이 afterDataLimits 콜백을 사용하여 y축의 최대값을 좀 더 여유있게 지정할 수 있습니다!
                            scale.max = scale.max * 1.1;
                        },
                        axis: 'y', // 이 축이 y축임을 명시해줍니다.
                        display: true, // 축의 가시성 여부도 설정할 수 있습니다.
                        position: 'left',
                        scaleLabel: {
                            display: true,
                            labelString: "만원"
                        }
                    }
                },
                tooltip : {
                    callbacks: {
                        label: function (tooltipItem, data){
                            var label = data.labels[tooltipItem.index] + '만원';
                            return label;
                        }
                    }

                }
            }
        });

    }
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
<script>
    // 초기 지도 불러오는 함수
    function getMap(){

        var mapContainer = document.getElementById('search_map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                level: 6 // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);
        var geocoder = new kakao.maps.services.Geocoder();

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


    // 검색 결과 나타내 주는 지도
    function searchResultMap(address, subAddress, buildName){
        var mapContainer = document.getElementById('search_map'), // 지도를 표시할 div
            mapOption = {
                center: new kakao.maps.LatLng(37.50060595890094, 127.03641515171977), // 지도의 중심좌표
                level: 6 // 지도의 확대 레벨
            };

        // 지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);

        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();


        // 주소로 좌표를 검색합니다
        address.forEach(function (subAddress, index) {
            let overlay;
            geocoder.addressSearch(subAddress, function (result, status) {
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
                        '               <div class="bldgNm">'+ buildName[index]+ '아파트' + '</div>'+
                        '           </div>'


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
    }
</script>

</body>
</html>