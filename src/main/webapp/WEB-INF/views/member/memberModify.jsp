<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/member/memberModify.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
    <div id="userImg">
        <img src="${loginUser.profileImage}">
    </div>
    <form action="${pageContext.request.contextPath}/updateMember" method="post" name="form_name">
        <div class="form">
            <input type="hidden" id="memberNo" name="memberNo" value="${loginUser.memberNo}">
            <div class="userinfo nickName">
                <span>닉네임</span>
                <input type="text" id="nickName" name="nickName" value="${loginUser.nickName}" required>
                <button>중복검사</button>
            </div>
            <div class="userinfo email">
                <span>이메일</span>
                <input type="text" id="email" name="email" value="${loginUser.email}" required>
            </div>
            <div class="userinfo phone">
                <span>휴대폰번호</span>
                <input id="phoneNumber" type="text" name="phone" value="${loginUser.phone}" required>
                <button type="button" id="phoneChk">인증받기</button><br>
            </div>
            <div class="userinfo phone2">
                <input id="phone2" type="text" name="phone2" placeholder="인증번호를 입력해주세요">
                <button type="button" value="인증확인" id="phoneChk2">인증확인</button>
            </div>
            <div class="userinfo address">
                <span>주소</span>
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
            </div>
            <div class="userinfo address2">
                <input type="text" id="sample6_address" placeholder="주소" value="${loginUser.address}" name="address" required><br>
                <input type="text" id="sample6_detailAddress" value="" name="addressDetail" placeholder="상세주소">
            </div>
            <div class="btn_box">
                <button type="reset"><a href="${pageContext.request.contextPath}/myPage">취소</a></button>
                <button id="submit" type="submit">수정하기</button>
            </div>
        </div>
    </form>
</div>
<script>
    $(document).ready(function(){
        document.getElementById("submit").onclick = function (){
            document.form_name.submit();
        }
    });
    $("#submit").click(function (){
        alert('회원정보 수정 완료')
    })

    $(function(){
        code2 = "";
        $("#phoneChk").click(function(){
            alert('인증번호 발송 완료.\n휴대폰에서 인증번호 확인을 해주십시오.');
            var phone = $("#phoneNumber").val();
            $.ajax({
                type:"GET", // post 형식으로 발송
                url:"phoneCheck?phone=" + phone,
                data: {phoneNumber:phone},
                cache : false,
                success:function(data){
                    if(data == "error"){
                        alert("휴대폰번호가 올바르지 않습니다.")
                    }else{
                        alert("인증번호가 전송되었습니다.")
                        code2 = data;
                    }
                }

            });
        });
    });

    $("#phoneChk2").click(function() {
        if ($("#phone2").val() == code2) {
            alert('인증성공')
        } else {
            alert('인증실패 정확히 입력해주세요')
            $("#phoneChk2").focus();

        }
    })

    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                //     if(data.buildingName !== '' && data.apartment === 'Y'){
                //         extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                //     }
                //     // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                //     if(extraAddr !== ''){
                //         extraAddr = ' (' + extraAddr + ')';
                //     }
                //     // 조합된 참고항목을 해당 필드에 넣는다.
                //     document.getElementById("sample6_extraAddress").value = extraAddr;
                //
                // } else {
                //     document.getElementById("sample6_extraAddress").value = '';
                // }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>



</script>
</body>
</html>