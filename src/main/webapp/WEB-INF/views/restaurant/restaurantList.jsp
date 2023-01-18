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
<%--    <link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"--%>
<%--          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">--%>
</head>
<body>
<div id="content">
    <div id="place_head">

        <div>
            <button>새로운 맛집 등록하기</button>
        </div>
        <button onclick='retrieveRestaurants()'>테스트용</button>

        <div class="place city">
            <select id="searchState">
                <option value="">선택</option>
                <c:forEach items="${stateList}" var="state">
                    <option value="${state}">${state}</option>
                </c:forEach>
            </select>


        </div>

        <div class="place hashtag">
            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_code" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">한식</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_code" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">중식</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" name="chk_code" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">양식</label>
        </div>




    </div>


    <div id="place_body">
        <div class="place_list">
            <div class="place info">

                <c:set var="i" value="0"/>
                <c:set var="j" value="3"/>

                <table border=1>
                    <c:choose>
                        <c:when test="${selectResList != null && fn:length(selectResList) > 0 }">
                            <c:forEach items="${selectResList}" var="selectResList">
                                <c:if test="{i%j == 0}">
                                    <tr>
                                </c:if>

                                <td align="center">
<%--                                    <a href="resDetail?resNo=${selectResList.resNo}">이동</a><br>--%>
<%--                                    <img src="<c:out value="${selectResList.ResImgUrl}" />" width="300px" height="300px">--%>
                                    <c:out value="${selectResList.resName}"/> <br>
                                    <c:out value="${selectResList.state}"/><br>
                                </td>
                                <c:if test="${i%j == j-1}">
                                    </tr>
                                </c:if>
                                <c:set var="i" value="${i+1}"/>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td>내역이 존재하지 않습니다.</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </table>

            </div>
        </div>
    </div>




    <div id="pagingArea">
        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" href="selectResList?cpage=${pi.currentPage -1 }">Previous</a></li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" href="selectResList?cpage=${item }">${item }</a></li>
            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" href="selectResList?cpage=${pi.currentPage + 1}">Next</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>


<script>
    function retrieveRestaurants() {
        $.ajax({
            url: '${pageContext.request.contextPath}/restaurants',
            success(data) {
                console.log(data['restaurantList'])
                console.log(data['pageInfoCombine'])
            }
        })
    }

</script>


</div>







</body>
</html>