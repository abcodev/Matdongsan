<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realeatate/realestateList.css"/>">
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <title>부동산</title>
</head>
<body>
<div id="content">
    <div id="content_left">
        <div id="search_box">
            <div class ="search city">
                <select>
                    <c:forEach var="r" items="${list}">
                        <option value="${r.sggNm}">${r.sggNm}</option>
                    </c:forEach>
                </select>
                <select>동</select>
            </div>
            <div class ="search option">
                <select>거래유형</select>
                <select>가격</select>
                <select>평수</select>
            </div>
            <div class="btn_box">
                <button>조회</button>
            </div>
        </div>
        <div id="place">

        </div>
    </div>
    <div id="content_right">
        <div id="search_map">
            <img src="카카오맵.png">
        </div>
        <div id="search_list">
            <table class="table">
                <tr>
                    <th>자치구명</th>
                    <th>아파트명</th>
                    <th>전/월세</th>
                    <th>보증금</th>
                    <th>임대면적</th>
                </tr>
                <c:forEach var="r" items="${ list }">
                    <tr>
                        <td class="rno">${ r.sggNm }</td>
                        <td>${r.buildName }</td>
                        <td>${r.rentGbn }</td>
                        <td>${r.rentGtn}</td>
                        <td>${r.rentArea }</td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <div id="paging">
            <c:set var="url" value="?currentPage="/>
            <ul class="pagination">
                <c:choose>
                <c:when test="${pi.currentPage eq 1 }">
                <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                </c:when>
                <c:otherwise>
                <li class="page-item"><a class="page-link" href="${url}${pi.currentPage-1 }${sUrl}">Previous</a></li>
                </c:otherwise>
                </c:choose>

                <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" href="${url}${item }${sUrl}">${item }</a></li>
                </c:forEach>

                <c:choose>
                <c:when test="${pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                <li class="page-item"><a class="page-link" href="${url}${pi.currentPage+1 }${sUrl}">Next</a></li>
                </c:otherwise>
                </c:choose>
        </div>
    </div>
</div>
</body>
</html>