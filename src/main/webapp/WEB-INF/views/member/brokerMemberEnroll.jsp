<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>부동산 회원 신청</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/member/brokerEnroll.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file="../template/header.jsp" %>
<div id="content">
    <div id="userImg">
        <img src="${loginUser.profileImage}">
    </div>
    <form action="${pageContext.request.contextPath}/broker/enroll" method="post" name="form_name" enctype="multipart/form-data">
        <div class="form">
            <input type="hidden" id="memberNo" name="memberNo" value="${loginUser.memberNo}">
            <div class="info name">
                <span>대표자명</span>
                <input type="text" id="refName" name="refName" value="${loginUser.memberName}" required>
            </div>
            <div class="info realtor_name">
                <span>공인중개사 상호명</span>
                <input type="text" id="agentName" name="agentName" required>
            </div>
            <div class="info realtor_num">
                <span>공인중개사 번호</span>
                <input type="text" id="agentNo" name="agentNo" required>
            </div>
            <div class="info phone">
                <span>전화번호</span>
                <input id="phoneNumber" type="text" name="agentPhone" required>
            </div>
            <div class="info state">
                <span>지역</span>
                <select id="state" name="state">
                    <option value="" style="text-align: center">지역구를 선택해주세요</option>
                    <c:forEach items="${stateList}" var="state">
                        <option value="${state}">${state}</option>
                    </c:forEach>
                </select>
                <input type="text" id="bjdongNm" name="bjdongNm" placeholder="동을 입력해 주세요">
            </div>
            <div class="info address">
                <span>공인중개사 주소</span>
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
            </div>
            <div class="info address2">
                <input type="text" id="sample6_address" name="address" placeholder="주소" required><br>
                <input type="text" id="sample6_detailAddress" name="addressDetail" placeholder="상세주소">
            </div>
            <div class="info file">
                <span>사업자 등록증 첨부</span>
                <input id="formFileSm" name="file" type="file" onchange="readURL(this);" required>
            </div>
            <div class="btn_box">
                <button type="reset"><a href="${pageContext.request.contextPath}/myPage">취소</a></button>
                <button type="submit" onclick="brokerEnroll();">신청 하기</button>
            </div>
        </div>
    </form>
</div>

<script>

    $("form").on("submit", function() {
        alert("제휴부동산 회원 신청이 완료되었습니다. \n승인까지 1-3일이 소요됩니다.");
    });

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                document.getElementById('preview').src = e.target.result;
            };
            reader.readAsDataURL(input.files[0]);
        }

        if (input.files && input.files[0].size > (10 * 1024 * 1024)) {
            alert("파일 크기는 10mb 를 넘길 수 없습니다.");
            input.value = null;
        }
    }


    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</body>
</html>