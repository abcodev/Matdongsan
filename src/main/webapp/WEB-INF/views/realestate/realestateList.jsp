<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<c:set var="l" value="${localList}"/>
<c:set var="d" value="${dongList}"/>
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
        <form name="searchArea" action="<c:url value="/realEstate/list"/>">
            <div id="search_box">
                <div class ="search city">
                    <select name="selectOption1" id="selectOption1" >
                        <c:forEach var="localList" items="${localList}">
                            <option value="${localList.sggNm}">${localList.sggNm}</option>
                        </c:forEach>
                    </select>
                    <select name="selectOption2" id="selectOption2">
                        <option value="total">전체</option>
                        <c:forEach var="dongList" items="${dongList}">
                            <option value="${dongList.bjdName}">${dongList.bjdName}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class ="search option">
                    <select name="rentType" id="rentType" onchange="optionType(this)">
                        <option value="a">매매</option>
                        <option value="b">전세</option>
                        <option value="c">월세</option>
                    </select>

                    <select name="rentGtn" id="rentGtn">
                        <option value="">매매가(만원)</option>
                        <option value="range1">50000이하</option>
                        <option value="range2">50000~100000</option>
                        <option value="range3">100000~150000</option>
                        <option value="range4">150000~200000</option>
                        <option value="range5">200000이상</option>
                    </select >

                    <select name="area" id="area">
                        <option value="">면적</option>
                        <option value="area1">~ 30이하</option>
                        <option value="area2">30초과 ~ 60이하</option>
                        <option value="area3">60초과 ~ 120이하</option>
                        <option value="area4">120초과</option>
                    </select>
                </div>
                <div class="btn_box">
                    <button onclick="detailSearch()">조회</button>
                </div>
            </div>

<%--            <form id="form" method="get" action="<c:url value="/realEstate/list"/>">--%>
<%--                <input type="hidden" id="state" name="state">--%>
<%--                <input type="hidden" id="dong" name="dong">--%>
<%--            </form>--%>
            <script>
                function detailSearch() {

                    // $('#state').val($('#selectOption1 option:checked').val())
                    // $('#dong').val($('#selectOption2 option:checked').val())

                    $("#selectOption1 option:checked").val()
                    $("#selectOption2 option:checked").val()
                    $('#rentType option:checked').val()
                    $('#rentGtn option:checked').val()
                    $('#area option:checked').val()

                    $('form').submit()
                }
            </script>


        </form>
        <div id="place">

        </div>
    </div>
    <div id="content_right">
        <div id="search_map">
            <c:forEach var="r" items="${list}">

            </c:forEach>
        </div>
        <div id="search_list">
            <table class="table">
                <tr>
                    <th>자치구명</th>
                    <th>아파트명</th>
                    <th>거래타입</th>
                    <th>금액</th>
                    <th>임대면적</th>
                </tr>
                <c:forEach var="selectAllList" items="${ selectAllList }">
                    <tr>
                        <td class="rno">${ selectAllList.sggNm }</td>
                        <td>${selectAllList.buildName }</td>
                        <td>${selectAllList.rentGbn }</td>
                        <td>${selectAllList.rentGtn}</td>
                        <td>${selectAllList.rentArea }</td>
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
                        <li class="page-item"><a class="page-link" href="selectAllList?cpage=${pi.currentPage -1 }">Previous</a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                    <li class="page-item"><a class="page-link" href="selectAllList?cpage=${item }">${item }</a></li>
                </c:forEach>

                <c:choose>
                    <c:when test="${ pi.currentPage eq pi.maxPage }">
                        <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="selectAllList?cpage=${pi.currentPage + 1}">Next</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>


        </div>
    </div>
</div>

<%--검색 동 변경--%>
<script>
    $("#selectOption1").change(function (){
       let state = $("#selectOption1").val();

        $.ajax({
            url: '${pageContext.request.contextPath}/realEstate/list',
            contentType: "application/json; charset=UTF-8",
            type: 'GET',
            data: {
                'state': state
            },
            dataType: 'json',
            success: function (result) {
                $("#selectOption2 option").remove();
                $("#selectOption2").append("<option value='total'>전체</option>");

                alert(JSON.stringify(result));
            }
        }).fail(function (error) {
            console.log(error);
            alert("통신 실패");
        })
    })

</script>

<%-- 매매/전,월세 select 변경 --%>
<script>
    function optionType(e){

        console.log(e.value);

        if(e.value != "a"){
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









<%--지도 관련 스크립트--%>
<%--<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>--%>
<%--<script>--%>


<%--    var mapContainer = document.getElementById('search_map'), // 지도를 표시할 div--%>
<%--        mapOption = {--%>
<%--            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표--%>
<%--            level: 4 // 지도의 확대 레벨--%>
<%--        };--%>

<%--    // 지도를 생성합니다--%>
<%--    var map = new kakao.maps.Map(mapContainer, mapOption);--%>



<%--    // HTML5의 geolocation으로 사용할 수 있는지 확인--%>
<%--    if (navigator.geolocation) {--%>

<%--        // GeoLocation을 이용해서 접속 위치를 얻어옵니다--%>
<%--        navigator.geolocation.getCurrentPosition(function(position) {--%>

<%--            var lat = position.coords.latitude, // 위도--%>
<%--                lon = position.coords.longitude; // 경도--%>

<%--            var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성--%>
<%--                message = '<div style="padding:5px;">현재 위치</div>'; // 인포윈도우에 표시될 내용--%>

<%--            // 마커와 인포윈도우를 표시--%>
<%--            displayMarker(locPosition, message);--%>

<%--        });--%>

<%--    } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정--%>

<%--        var locPosition = new kakao.maps.LatLng(37.566826, 126.9786567),--%>
<%--            message = 'geolocation을 사용할수 없어요..'--%>

<%--        displayMarker(locPosition, message);--%>
<%--    }--%>





<%--    var geocoder = new kakao.maps.services.Geocoder();--%>

<%--    var listData = [--%>
<%--        // '서울시 강남구 도곡동 538',--%>
<%--        // '서울시 강남구 역삼동 729-35',--%>
<%--        // '서울특별시 송파구 오금로13길 8',--%>
<%--        // '서울특별시 송파구 올림픽로 25',--%>
<%--        // '서울특별시 광진구 동일로18길 80',--%>
<%--        // '서울특별시 종로구 지봉로 25',--%>
<%--        // '서울특별시 성북구 인촌로 73',--%>


<%--        <c:forEach items="${selectAllList}" var="selectAllList">--%>
<%--        '${selectAllList.buildName}',--%>
<%--        </c:forEach>--%>



<%--    ];--%>





<%--    listData.forEach(function(addr, index) {--%>
<%--        geocoder.addressSearch(addr, function(result, status) {--%>
<%--            if (status === daum.maps.services.Status.OK) {--%>
<%--                var coords = new daum.maps.LatLng(result[0].y, result[0].x);--%>

<%--                var marker = new daum.maps.Marker({--%>
<%--                    map: map,--%>
<%--                    position: coords--%>
<%--                });--%>
<%--                var infowindow = new daum.maps.InfoWindow({--%>
<%--                    content: '<div style="width:150px;text-align:center;padding:6px 0;">' + listData[index] + '</div>',--%>
<%--                    disableAutoPan: true--%>
<%--                });--%>
<%--                infowindow.open(map, marker);--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>





<%--    // 지도에 마커와 인포윈도우를 표시하는 함수--%>
<%--    function displayMarker(locPosition, message) {--%>

<%--        // 마커를 생성합니다--%>
<%--        var marker = new kakao.maps.Marker({--%>
<%--            map: map,--%>
<%--            position: locPosition--%>
<%--        });--%>

<%--        var iwContent = message, // 인포윈도우에 표시할 내용--%>
<%--            iwRemoveable = true;--%>

<%--        // 인포윈도우를 생성합니다--%>
<%--        var infowindow = new kakao.maps.InfoWindow({--%>
<%--            content : iwContent,--%>
<%--            removable : iwRemoveable--%>
<%--        });--%>

<%--        // 인포윈도우를 마커위에 표시--%>
<%--        infowindow.open(map, marker);--%>

<%--        // 지도 중심좌표를 접속위치로 변경--%>
<%--        map.setCenter(locPosition);--%>
<%--    }--%>



<%--</script>--%>




</body>
</html>