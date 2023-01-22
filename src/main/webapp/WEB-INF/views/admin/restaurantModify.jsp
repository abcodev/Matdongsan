<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2023/01/22
  Time: 5:37 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<jsp:include page="../common/header.jsp" />

<form action="${pageContext.request.contextPath}/admin/resInsert" method="post" enctype="multipart/form-data">
    <div id="content">
        <div class="res name">
            <h3>맛집이름</h3>
            <input type="text" name="resName">
        </div>
        <div>
            <h3>지역</h3>
            <input type="text" name="state">
        </div>
        <div class="res address">
            <h3>주소</h3>
            <input type="text" name="address">
        </div>
        <div class="res phone">
            <h3>전화번호</h3>
            <input type="text" name="resPhone">
        </div>
        <div class="res menu">
            <h3>주요 메뉴</h3>
            <input type="text" name="resFood">
        </div>

    </div>
    <div class="place hashtag">
        <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
            <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="hashtagId" autocomplete="off" value="${hashtag.hashtagId}">
            <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
        </c:forEach>
    </div>

    <div class="res img">
        <input class="form-control form-control-sm" id="formFileSm" name="file" type="file" onchange="readURL(this);">
        <img id="preview" />

        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        document.getElementById('preview').src = e.target.result;
                    };
                    reader.readAsDataURL(input.files[0]);
                } else {
                    document.getElementById('preview').src = "";
                }
            }
        </script>
    </div>

    <div class="btn_box">
        <button>취소</button>
        <button type="submit">수정</button>
    </div>
    </div>
    <script>
        $('input:checkbox[name=chk_hashtag]').click(function(){

            let cntEPT = $('input:checkbox[name=hashtagId]:checked').length;
            if(cntEPT>2){
                alert('해시태그는 최대 2개까지 선택 가능합니다.')
                $(this).prop('checked', false);
            }
        });
    </script>
</form>
</body>
</html>
