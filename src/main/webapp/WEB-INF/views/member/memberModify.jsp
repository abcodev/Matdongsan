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
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
    <div id="userimg">
        <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
    </div>
    <form action="/updateMember" method="post">
        <div class="userinfo nickName">
            <h3>닉네임</h3>
            <input type="text" id="nickName" name="nickName" value="${loginUser.nickName}">
            <button>중복검사</button>
        </div>
        <div class="userinfo email">
            <h3>이메일</h3>
            <input type="text" id="email" name="email" value="${loginUser.email}">
        </div>
        <div class="userinfo phone">
            <h3>휴대폰번호</h3>
            <input type="text" id="phone" name="phone"  title="전화번호 입력" required/>
            <span id="phoneChk" class="doubleChk">인증번호 보내기</span><br/>
            <input id="phone2" type="text" name="phone2" title="인증번호 입력" disabled required/>
            <span id="phoneChk2" class="doubleChk">본인인증</span>
            <span class="point successPhoneChk">휴대폰 번호 입력후 인증번호 보내기를 해주십시오.</span>
            <input type="hidden" id="phoneDoubleChk"/>
            <button>인증</button>
        </div>
        <div class="userinfo adressNum">
            <h3>우편번호</h3>
            <input type="text">
            <button>검색</button>
        </div>
        <div class="userinfo address">
            <h3>주소</h3>
            <input type="text" id="address" name="address" value="${loginUser.address}">
        </div>
        <div class="btn_box">
            <button>취소</button>
            <button>수정</button>
        </div>
    </form>
</div>

<script>
    var code2 = "";
    $("#phoneChk").click(function(){
        alert("인증번호 발송이 완료되었습니다.\n휴대폰에서 인증번호 확인을 해주십시오.");
        var phone = $("#phone").val();
        $.ajax({
            type:"GET",
            url:"phoneCheck?phone=" + phone,
            cache : false,
            success:function(data){
                if(data == "error"){
                    alert("휴대폰 번호가 올바르지 않습니다.")
                    $(".successPhoneChk").text("유효한 번호를 입력해주세요.");
                    $(".successPhoneChk").css("color","red");
                    $("#phone").attr("autofocus",true);
                }else{
                    $("#phone2").attr("disabled",false);
                    $("#phoneChk2").css("display","inline-block");
                    $(".successPhoneChk").text("인증번호를 입력한 뒤 본인인증을 눌러주십시오.");
                    $(".successPhoneChk").css("color","green");
                    $("#phone").attr("readonly",true);
                    code2 = data;
                }
            }
        });
    });

</script>
</body>
</html>