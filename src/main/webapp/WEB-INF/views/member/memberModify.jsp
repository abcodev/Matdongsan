<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보수정</title>
    <link rel="stylesheet" href="회원정보수정.css">
    <jsp:include page="../template/font.jsp"/>
</head>
<body>
<div id="content">
    <div id="userimg">
        <img src="../../resources/images/맛동산%20로고.png">
    </div>
    <div class="userinfo nickName">
        <h3>닉네임</h3>
        <input type="text">
        <button>중복검사</button>
    </div>
    <div class="userinfo email">
        <h3>이메일</h3>
        <input type="text">
    </div>
    <div class="userinfo phone">
        <h3>휴대폰번호</h3>
        <input type="text">
        <button>인증</button>
    </div>
    <div class="userinfo adressNum">
        <h3>우편번호</h3>
        <input type="text">
        <button>검색</button>
    </div>
    <div class="userinfo address">
        <h3>주소</h3>
        <input type="text">
    </div>
    <div class="btn_box">
        <button>취소</button>
        <button>수정</button>
    </div>
</div>
</body>
</html>