<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>동네맛집리스트</title>
    <%@ include file ="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">
</head>
<body>

<script>
    window.onload = () => {
        retrieveRestaurants(1)
    }
</script>
<div id="content">
    <c:if test="${loginUser.grade eq 'ADMIN'}">
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