<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-01-19
  Time: 오후 8:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
</head>
<body>
<form action="${pageContext.request.contextPath}/admin/resInsert" method="post" enctype="multipart/form-data">
<div id="content">
    <div class="res name">
        <h3>맛집이름</h3>
        <input type="text" name="resName">
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
    <div class="place hashtag">
        <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
            <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="chk_hashtag" autocomplete="off" value="${hashtag}">
            <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag}</label>
        </c:forEach>
    </div>
    <div class="res img">
        <input class="form-control form-control-sm" id="formFileSm" type="file">
    </div>
    <div class="btn_box">
        <button>취소</button>
        <button type="submit">등록</button>
    </div>
</div>
<script>
    $('input:checkbox[name=chk_hashtag]').click(function(){

        let cntEPT = $('input:checkbox[name=chk_hashtag]:checked').length;
        if(cntEPT>2){
            alert('해시태그는 최대 2개까지 선택 가능합니다.')
            $(this).prop('checked', false);
        }
    });
</script>
</form>
</body>
</html>