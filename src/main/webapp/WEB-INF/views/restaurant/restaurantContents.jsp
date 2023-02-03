<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">
<jsp:include page="../template/font.jsp"></jsp:include>

<div id="restaurant_list_ajax">
    <div class="ajax_list_main">
        <div class="place_list">
            <div class="res_list">
                <c:choose>
                    <c:when test="${selectResList != null && fn:length(selectResList) > 0 }">
                        <c:forEach items="${selectResList}" var="selectResList">
                            <div class="res_info" onclick="location.href='restaurantDetail?resNo=${selectResList.resNo}'">
                                <img src="<c:out value="${selectResList.resImgUrl}" />" class="res_img">
                                <span id="res_info_state"><c:out value="${selectResList.state}"/></span>
                                <span id="res_info_name"><c:out value="${selectResList.resName}"/></span>
                            </div>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <div>
                            <span>맛집이 존재하지 않습니다.</span>
                        </div>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
        <div id="paging">
            <ul class="pagination">
                <c:choose>
                    <c:when test="${ pi.currentPage eq 1 }">
                        <li class="page-item disabled"><i class="fa-solid fa-angles-left"></i></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item" onclick="retrieveRestaurants(${pi.currentPage - 1})"><i class="fa-solid fa-angles-left"></i></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                    <li class="page-item" onclick="retrieveRestaurants(${item})">${item }</li>
                </c:forEach>

                <c:choose>
                    <c:when test="${ pi.currentPage eq pi.maxPage }">
                        <li class="page-item disabled"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item" onclick="retrieveRestaurants(${pi.currentPage + 1})"><i class="fa-solid fa-angles-right"></i></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>

<script>
    function retrieveRestaurants(current_page) {
        const checkHashtag = [];
        $('input:checkbox[name=chk_hashtag]:checked').each(function () {
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