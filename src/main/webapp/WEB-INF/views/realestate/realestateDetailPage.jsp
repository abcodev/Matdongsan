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
    <%@ include file="../template/header.jsp" %>
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
                    <%--if(${empty loginUser}){--%>
                    <%--    $('#checkbox_heart').prop("checked", false);--%>
                    <%--    alert("로그인 후 이용가능합니다.")--%>
                    <%--    return false;--%>
                    <%--}--%>
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
                    <td>${realEstateDetail.floor} 층</td>
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

                    </div> <!-- 지도를 표시할 div 입니다 -->
                    <div id="roadview" class="image-container">

                    </div>
                </div>
            </div>

            <script type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=035c35f196fa7c757e49e610029837b1&libraries=services"></script>
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

                geocoder.addressSearch('${realEstateDetail.address}', function (result, status) {

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

                function Roadview() {
                    // 주소로 좌표를 검색합니다
                    geocoder.addressSearch('${realEstateDetail.address}', function (result, status) {
                        // 정상적으로 검색이 완료됐으면
                        if (status === kakao.maps.services.Status.OK) {
                            var position = new kakao.maps.LatLng(result[0].y, result[0].x);
                            // 특정 위치의 좌표와 가까운 로드뷰의 panoId를 추출하여 로드뷰를 띄운다.
                            roadviewClient.getNearestPanoId(position, 500, function (panoId) {
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

<%--*****************예약******************--%>
<script>

    let resercationAgentNo = null;

    function showRealtor(agentNo, agentName) {
        if(${empty loginUser}){
            swal("로그인 후 이용가능합니다.")
            return false;
        }
        console.log(agentNo);
        $('#agent_name').html(agentName);
        resercationAgentNo = agentNo;
        document.querySelector('.modal_wrap').style.display = 'block';
        document.querySelector('.black_bg').style.display = 'block';
    }

    window.onload = function () {
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
        document.querySelector('.modal_close').addEventListener('click', offClick);
        document.querySelector('.black_bg').addEventListener("click", offClick);
    };

    function offClick() {
        document.querySelector('.modal_wrap').style.display = 'none';
        document.querySelector('.black_bg').style.display = 'none';
        $(".rm_input").val("");
        reservationDate = "";
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
                htmlDummy += '<div onclick="swal(\'과거 일정은 선택할 수 없습니다!\')">' + i + '</div>';
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
            swal("날짜를 입력해주세요")
            return false;
        } else if (memberName == "") {
            swal("이름을 입력해주세요")
            $('#memberName').focus();
            return false;
        } else if (phone == "") {
            swal("휴대폰번호를 입력해주세요")
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
                    swal("예약에 성공하였습니다.");
                    offClick();

                },
                error: () => {
                    swal("예약 등록에 실패하였습니다.");
                }
            })
        }
    }
</script>
</body>
</html>

