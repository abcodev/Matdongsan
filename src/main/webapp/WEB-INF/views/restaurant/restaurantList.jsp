<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>동네맛집리스트</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <jsp:include page="../template/font.jsp"/>
    <%@ include file ="../template/header.jsp" %>
</head>
<body>

<script>
    window.onload = () => {
        retrieveRestaurants(1)
    }
</script>
<div id="content">
    <c:if test="${loginUser.memberNo == 1 or loginUser.grade eq 'ADMIN'}">
        <div id="enroll_btn">
            <button onclick="location.href='${pageContext.request.contextPath}/admin/resEnroll'">새로운 맛집 등록하기</button>
        </div>
    </c:if>
    <div id="place_head">
        <div class="place city">
            <select id="select_state" onchange="retrieveRestaurants(1)">
                <option value="">-------전체-------</option>
                <c:forEach items="${stateList}" var="state">
                    <option value="${state}">${state}</option>
                </c:forEach>
            </select>
        </div>
        <div class="place hashtag">
            <c:forEach items="${hashtagList}" var="hashtag" varStatus="i">
                <input type="checkbox" class="btn-check" id="btn-check-outlined${i.count}" name="chk_hashtag" autocomplete="off" value="${hashtag.hashtag}" onchange="retrieveRestaurants(1)">
                <label class="btn btn-outline-secondary" for="btn-check-outlined${i.count}">${hashtag.hashtag}</label>
            </c:forEach>
        </div>
    </div>
    <div class="place_body">

    </div>
</div>

<script>
    function retrieveRestaurants(current_page) {
        const checkHashtag = [];
        $('input:checkbox[name=chk_hashtag]:checked').each(function() {
            checkHashtag.push(this.value);
        });

        $.ajax({
            url: '${pageContext.request.contextPath}/restaurants',
            method: 'GET',
            data: {
                cpage: current_page,
                state: $('#select_state option:checked').val(),
                hashtag: checkHashtag.join(',')
            },
            success(data) {
                const html = jQuery('<div>').html(data);
                const contents = html.find('div#restaurant_list_ajax').html()
                $('.place_body').html(contents)
            }
        })
    }
</script>
</body>
</html>