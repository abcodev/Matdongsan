<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=IBM+Plex+Sans+KR:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/restaurantEnroll.css"/>">
    <%@ include file="../template/header.jsp" %>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/resInsert" method="post" enctype="multipart/form-data" name="restaurantEnroll">
    <div class="body">
        <div id="content">
            <div id="contentHead"></div>
            <div class="resDiv">
                <i class="bi bi-shop"></i>
                <span class="font">맛집이름 : </span>
                <input type="text" class="textInput" name="resName" required placeholder="맛집을 입력해주세요">
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-map-location-dot"></i>
                <span class="font">주소 : </span>
                <input type="text" id="space" class="textInput"name="address" required placeholder="주소를 입력해주세요">
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-phone"></i>
                <span class="font">전화번호 : </span>
                <input type="text" class="textInput"name="resPhone" required placeholder="전화번호를 입력해주세요">
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-utensils"></i>
                <span class="font">주요메뉴 : </span>
                <input type="text" class="textInput" name="resFood" required placeholder="메뉴를 입력해주세요">
            </div>
            <div class="resDiv">
                <i class="bi bi-geo-alt-fill"></i>
                <span class="font">지역 : </span>
                <input type="text" id="space2" class="textInput" name="state" required placeholder="지역을 입력해주세요">
            </div>
        </div>
        <div class="placeHashtag">
            <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
                <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="hashtagId" autocomplete="off" value="${hashtag.hashtagId}">
                <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
            </c:forEach>
        </div>
        <br><br>
        <div class="resImg">
            <span class="font"><i class="bi bi-camera"></i></span>
            <input class="form-control form-control-sm" id="formFileSm" name="file" type="file" onchange="readURL(this);" required>
            <br><br>
            <div id="previewHead">
                <img id="preview"/>
            </div>

        </div>
        <br><br>
        <div class="btn_box">
            <button class="bbtn">취소</button>
            <input  class="bbtn" type="submit" onclick="return gopage();" value="등록" />
        </div>
    </div>
</form>
<script>
    $('input:checkbox[name=hashtagId]').click(function(){

        let cntEPT = $('input:checkbox[name=hashtagId]:checked').length;
        if(cntEPT>2){
            alert('해시태그는 최대 2개까지 선택 가능합니다.')
            $(this).prop('checked', false);
        }
    });

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

        if (input.files && input.files[0].size > (10 * 1024 * 1024)) {
            alert("파일 크기는 10mb 를 넘길 수 없습니다.");
            input.value = null;
        }
    }


    function gopage(){
        let cntEPT = $('input:checkbox[name=hashtagId]:checked').length;
        if(cntEPT===2){
            return true;
        }else{
            alert("해쉬태그 두개 선택해라 장현정")
            return false;
        }
    }

</script>
</body>
</html>