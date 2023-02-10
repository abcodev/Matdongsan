<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/restaurantEnroll.css"/>">
    <%@ include file="../template/header.jsp" %>
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/resInsert" method="post" enctype="multipart/form-data" name="restaurantEnroll">
    <div id="content">
        <div id="contentHead"></div>
        <div class="resDiv">
            <span>맛집이름 : </span>
            <input type="text" name="resName" required>
        </div>
        <div class="resDiv">
            <span>주소 :</span>
            <input type="text" name="address" required>
        </div>
        <div class="resDiv">
            <span>전화번호 :</span>
            <input type="text" name="resPhone" required>
        </div>
        <div class="resDiv">
            <span>주요 메뉴 :</span>
            <input type="text" name="resFood" required>
        </div>
        <div class="resDiv">
            <span>지역 : </span>
            <input type="text" name="state" required>
        </div>
    </div>
    <div class="placeHashtag">
        <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
            <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="hashtagId" autocomplete="off" value="${hashtag.hashtagId}">
            <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
        </c:forEach>
    </div>
    <div class="resImg">

        <input class="form-control form-control-sm" id="formFileSm" name="file" type="file" onchange="readURL(this);" required>
        <br>
        <img id="preview"/>
    </div>
    <br>
    <div class="btn_box">
        <button class="bbtn">취소</button>
        <input  class="bbtn" type="submit" onclick="return gopage();" value="등록" />
    </div>
    </div>
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
    }

    function gopage(){
        let cntEPT = $('input:checkbox[name=hashtagId]:checked').length;
        if(cntEPT==2){
            return true;
        }else{
            alert("해쉬태그 두개 선택해라 장현정")
            return false;
        }
    }

</script>
</form>
</body>
</html>