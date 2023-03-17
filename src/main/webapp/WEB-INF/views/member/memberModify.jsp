<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원정보수정</title>
    <%@ include file="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/member/memberModify.css"/>">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

<div id="content">
    <div id="userImg">
        <img src="${loginUser.profileImage}">
    </div>
    <form action="${pageContext.request.contextPath}/updateMember" method="post" name="form_name" onsubmit="return signupCheck();">
        <div class="form">
            <input type="hidden" id="memberNo" name="memberNo" value="${loginUser.memberNo}">
            <div class="userinfo nickName">
                <span>닉네임</span>
                <input id="nickName" type="text" name="nickName" value="${loginUser.nickName}" maxlength="8"
                       title="8자 까지 입력" required autofocus/>
                <input type="hidden" id="nickNameDoubleChk"/>
                <p class="point successNameChk">닉네임은 2자 이상 8자 이하로 설정해주세요</p>
            </div>
            <div class="userinfo email">
                <span>이메일</span>
                <input type="text" id="email" name="email" value="${loginUser.email}" required>
            </div>
            <div class="userinfo phone">
                <span>휴대폰번호</span>
                <input id="phoneNumber" type="text" name="phone" >
                <button type="button" id="phoneChk">인증받기</button>
                <br>
            </div>
            <div class="userinfo phone2">
                <input id="phone2" type="text" name="phone2" placeholder="인증번호를 입력해주세요" >
                <input type="hidden" id="phoneNumberDoubleChk" />
                <%--                <span id="timeZone"></span>--%>
                <button type="button" value="인증확인" id="phoneChk2">인증확인</button>
            </div>
            <div class="userinfo address">
                <span>주소</span>
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <button type="button" onclick="sample6_execDaumPostcode()">우편번호 찾기</button>
            </div>
            <div class="userinfo address2">
                <input type="text" id="sample6_address" placeholder="주소" value="${loginUser.address}" name="address"
                       required><br>
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

    $(function () {
        code2 = "";
        $("#phoneChk").click(function () {
            const phone = $("#phoneNumber").val();
            if (phone === "") {
                Swal.fire('휴대폰 번호를 입력해주세요.');
                return;
            }

            $.ajax({
                type: "GET", // post 형식으로 발송
                url: "phoneCheck?phone=" + phone,
                data: {phoneNumber: phone},
                cache: false,
                success: function (data) {
                    if (data === "error") {
                        Swal.fire("휴대폰번호가 올바르지 않습니다.")
                    } else {
                        Swal.fire("인증번호가 전송되었습니다.")
                        code2 = data;
                    }
                }
            });
        });
    });

    let checkPhoneNumber = false;
    let checkNickName = false;

    $("#phoneChk2").click(function () {
        if ($("#phone2").val() === code2) {
            checkPhoneNumber = true;
            Swal.fire({
                icon: 'success',
                title: '인증에 성공하였습니다.'
            });
        } else {
            Swal.fire({
                icon: 'warning',
                title: '인증실패 정확히 입력해주세요.',
            });
            $("#phoneChk2").focus();
            checkPhoneNumber = false;
        }
    })


    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {

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


    $("#nickName").blur(function () {
        var nName = $("#nickName").val();
        if ('${loginUser.nickName}' === nName) {
            $(".successNameChk").text("");
            checkNickName = true;
            return;
        }

        if (nName == "" || nName.length < 2) {
            $(".successNameChk").text("닉네임은 2자 이상 8자 이하로 설정해주세요 :)");
            $(".successNameChk").css("color", "red");
            checkNickName = false;
        } else {
            $.ajax({
                url: '${pageContext.request.contextPath}/nNameCheck?nName=' + nName,
                type: 'post',
                cache: false,
                success: function (data) {
                    if (data == 0) {
                        $(".successNameChk").text("사용가능한 닉네임입니다 :)");
                        $(".successNameChk").css("color", "green");
                        $("#nickNameDoubleChk").val("true");
                        checkNickName = true;

                    } else {
                        $(".successNameChk").text("이미 사용중인 닉네임입니다 :p");
                        $(".successNameChk").css("color", "red");
                        $("#nickNameDoubleChk").val("false");
                        checkNickName = false;
                    }
                }, error: function () {
                    console.log("실패");
                }
            });
        }
    });


    function signupCheck() {
        if (!checkNickName) {
            Swal.fire({
                icon: 'warning',
                title: '사용 불가능한 닉네임 입니다.',
            });
            return false;
        }
        const phoneNumber = $("#phoneNumber").val();
        if ('${loginUser.phone}' !== phoneNumber && !checkPhoneNumber) {
            Swal.fire({
                icon: 'warning',
                title: '회원정보 변경을 위해 휴대폰 인증이 필요합니다.',
            });
            return false;
        }
        return true;
    }

</script>

</body>
</html>