<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>마이페이지</title>
  <link rel="stylesheet" href="마이페이지.css">
  <jsp:include page="../template/font.jsp"></jsp:include>
</head>
<body>
<div id="content">
  <div id="info_box">
    <div id="userimg">
      <img src="../../resources/images/common/맛동산%20로고.png">
    </div>
    <div id="userInfo">
      <table></table>
    </div>
    <div id="btn_box">
      <button>회원탈퇴</button>
      <button>정보수정</button>
    </div>
  </div>
  <div id="like">
    <h4>내가 찜한 목록</h4>
    <div id="likeList">
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
      <div class="likeInfo"></div>
    </div>
  </div>
  <div id="myBoard">
    <h4>내 게시글 보기</h4>
    <div id="myBoardList">
      <table></table>
    </div>
  </div>
  <div id="paging">

  </div>
</div>
</body>
</html>