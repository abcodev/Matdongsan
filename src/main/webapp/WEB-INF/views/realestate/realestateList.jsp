<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                    <option value="강남구">강남구</option>
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
                <tr><th>건물명</th><th>실거래가</th><th>평수</th></tr>
                <tr><td>$$아파트</td><td>20,000,000</td><td>25평형</td></tr>
            </table>
        </div>
        <div id="paging">

        </div>
    </div>
</div>
</body>
</html>