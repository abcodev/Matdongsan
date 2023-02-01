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
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<%@ include file ="../template/header.jsp" %>

<div id="content">
    <div id="userimg">
        <img src="${pageContext.request.contextPath}/resources/images/common/맛동산로고.png" alt="로고">
    </div>
    <form action="${pageContext.request.contextPath}/updateMember" method="post">
        <div class="form">
            <input type="hidden" id="memberNo" name="memberNo" value="${loginUser.memberNo}">
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
                <input type="text" id="phone" name="phone" value="${loginUser.phone}">
                <input  class="signin_pass" id="phoneNumber" type="text" name="phoneNumber" title="전화번호 입력" placeholder="전화번호 입력해주세요">
                <input  class="signin_pass" type="button" value="입력" id="phoneChk">

                <input  class="signin_pass" id="phone2" type="text" name="phone2" title="전화번호 입력" placeholder="인증번호 입력해주세요">
                <input  class="signin_pass" type="button" value="인증확인" id="phoneChk2">
                <button>인증</button>
            </div>
            <div class="userinfo adressNum">
                <h3>우편번호</h3>
                <input type="text" id="postCode">
                <button>검색</button>
            </div>
            <div class="userinfo address">
                <h3>주소</h3>
                <input type="text" id="address" name="address" value="${loginUser.address}">
            </div>
            <div class="userinfo interest">
                <h3>관심구</h3>
                    <select name="interestState" id="interestState" >
                        <option value="">전체</option>
                        <c:forEach var="stateList" items="${stateList}">
                            <option value="${stateList}">${stateList}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="btn_box">
                <button type="reset"><a href="${pageContext.request.contextPath}/myPage">취소</a></button>
                <button type="submit">수정</button>
            </div>
    </form>
</div>

<script>
    $(function(){
    code2 = "";
        $("#phoneChk").click(function(){
            alert('인증번호 발송이 완료.\n휴대폰에서 인증번호 확인을 해주십시오.');
            var phone = $("#phoneNumber").val();
            $.ajax({
                type:"GET", // post 형식으로 발송
                url:"phoneCheck?phone=" + phone,
                data: {phoneNumber:phone},
                cache : false,
                success:function(data){
                    if(data == "error"){
                        alert("휴대폰 번호가 올바르지 않습니다.")
                    }else{
                        alert("휴대폰 에 메세지가 전송되었습니다.")
                        code2 = data;
                    }
                }

            });
        });
    });

        $("#phoneChk2").click(function() {
            if ($("#phone2").val() == code2) {
                alert('인증성공')
                //값이 비어있을떄 도 인증성공이 떠서 안뜨게해야함
            } else {
                alert('인증실패 정확히 입력해주세요')
                $("#phoneChk2").focus();

            }
        })



</script>
</body>
</html>