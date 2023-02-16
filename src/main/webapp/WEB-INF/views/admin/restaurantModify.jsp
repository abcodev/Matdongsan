<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 2023/01/22
  Time: 5:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/restaurantEnroll.css"/>">
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
</head>
<body>

<%@ include file="../template/header.jsp" %>
<form action="${pageContext.request.contextPath}/admin/resUpdate" method="post" enctype="multipart/form-data">
    <div class="body">
        <div id="content">
            <div id="contentHead"></div>
            <div class="resDiv">
                <i class="bi bi-shop"></i>
                <span class="font">맛집이름 : &nbsp;</span>
                <input type="text" name="resName"  class="textInput" value="${restaurantDetail.resName}">
                <input type="hidden" name="resNo" value="${restaurantDetail.resNo}">
            </div>
            <div class="resDiv">
                <i class="bi bi-geo-alt-fill"></i>
                <span class="font">지역 : </span>
                <select id="space"  class="textInput" name="state">
                    <option value="" style="text-align: center">지역을 선택해주세요</option>
                    <c:forEach items="${stateList}" var="state">
                        <option value="${state}">${state}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-map-location-dot"></i>
                <span class="font">주소 : &nbsp;</span>
                <input type="text"  id="space2"  class="textInput"name="address" value="${restaurantDetail.address}">
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-phone"></i>
                <span class="font">전화번호 : &nbsp;</span>
                <input type="text"  class="textInput" name="resPhone" value="${restaurantDetail.resPhone}">
            </div>
            <div class="resDiv">
                <i class="fa-solid fa-utensils"></i>
                <span class="font">주요메뉴 : &nbsp;</span>
                <input type="text"  class="textInput" name="resFood" value="${restaurantDetail.resFood}">
            </div>
        </div>


        <div class="placeHashtag">
            <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
                <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="hashtagId" autocomplete="off" value="${hashtag.hashtagId}">
                <label class="btn btn-outline-secondary" id="hashBtn" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
            </c:forEach>
        </div>
        <br><br>


        <div class="resImg">
            <%--<div>
                <img src="${restaurantDetail.resImgUrl}">
                <input type="hidden" name="resImgUrl" value="${restaurantDetail.resImgUrl}">
            </div>--%>
            <span class="font"><i class="bi bi-camera"></i></span>
            <input class="form-control form-control-sm" id="formFileSm" name="file" type="file" onchange="readURL(this);">
            <br><br>
            <img id="preview" src="${restaurantDetail.resImgUrl}">
            <input type="hidden" name="resImgUrl" value="${restaurantDetail.resImgUrl}">
            <br><br><br>

        </div>


        <div class="btn_box">
            <%--        <button type="reset" class="bbtn" onclick="location.href='restaurantDetail?resNo=${restaurantDetail.resNo}'">취소</button>--%>
            <button type="reset" class="bbtn" onclick="history.back()">취소</button>
            <button type="submit" class="bbtn">수정</button>
        </div>
    </div>
</form>

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

        if (input.files && input.files[0].size > (10 * 1024 * 1024)) {
            swal("파일 크기는 10mb 를 넘길 수 없습니다.","","warning")
            input.value = null;
        }
    }

    $('input:checkbox[name=hashtagId]').click(function(){
        let cntEPT = $('input:checkbox[name=hashtagId]:checked').length;
        if(cntEPT>2){
            swal("해쉬태그","2개 까지 선택가능합니다!","warning")
            $(this).prop('checked', false);
        }
    });
</script>


</body>
</html>
