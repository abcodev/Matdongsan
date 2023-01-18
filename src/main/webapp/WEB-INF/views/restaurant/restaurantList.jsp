<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">--%>
</head>
<body>
<script>
    window.onload = () => {
        retrieveRestaurants(1)
    }
</script>
<div id="content">
    <div id="place_head">

        <div>
            <button>새로운 맛집 등록하기</button>
        </div>

        <div class="place city">
            <select id="select_state" onchange="retrieveRestaurants(1)">
                <option value="">선택</option>
                <c:forEach items="${stateList}" var="state">
                    <option value="${state}">${state}</option>
                </c:forEach>
            </select>
        </div>

        <div class="place hashtag">
<%--            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_hashtag" autocomplete="off" value="#한식" onchange="retrieveRestaurants(1)">--%>
<%--            <label class="btn btn-outline-secondary" for="btn-check-outlined">#한식</label>--%>
<%--            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_hashtag" autocomplete="off" value="#중식" onchange="retrieveRestaurants(1)">--%>
<%--            <label class="btn btn-outline-secondary" for="btn-check-outlined">#중식</label>--%>
<%--            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_hashtag" autocomplete="off" value="#양식" onchange="retrieveRestaurants(1)">--%>
<%--            <label class="btn btn-outline-secondary" for="btn-check-outlined">#양식</label>--%>

            <c:forEach items="${hashtagList}" var="hashtag">
                <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_hashtag" autocomplete="off" value="${hashtag}" onchange="retrieveRestaurants(1)">
                <label class="btn btn-outline-secondary" for="btn-check-outlined">${hashtag}</label>
<%--                <option value="${hashtags}">${hashtags}</option>--%>
            </c:forEach>

        </div>

    </div>
    <div class="place_body">

    </div>
</div>
<script>
    function retrieveRestaurants(current_page) {
        const checkHashtag = []; // 배열 선언
        $('input:checkbox[name=chk_hashtag]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
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