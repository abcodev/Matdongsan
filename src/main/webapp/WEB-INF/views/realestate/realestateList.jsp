<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="list" value="${map.list}"/>
<c:set var="pi" value="${map.pi}"/>
<c:set var="l" value="${localList}"/>
<c:set var="r" value="com.project.common.vo.RealEstateRent"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/realeatate/realestateList.css"/>">
    <jsp:include page="../template/font.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>부동산</title>
</head>
<body>
<script>
    window.onload = () => {
        retrieveRealEstate(1)
    }

    function retrieveRealEstate(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/realEstate/list',
            method: 'GET',
            data: {
                'cpage': current_page,
                'state': $('#selectOption1 option:checked').val(),
                'dong': $('#selectOption2 option:checked').val(),
                'rentType': $('#rentType option:checked').val(),
                'rentGtn': $('#rentGtn option:checked').val(),
                'chooseType': $('#chooseType option:checked').val()
            },
            success(data) {
                const html = jQuery('<div>').html(data);
                const contents = html.find('div#estate_rent_list_ajax').html()
                $('.place_body').html(contents)
            }
        });
    }
</script>
<div id="content">
    <div id="content_left">
        <div id="search_box">
            <div class="search city">
                <select name="selectOption1" id="selectOption1" onchange="get_option2(this.value)">
                    <option value="">전체</option>
                    <c:forEach var="localList" items="${localList}">
                        <option value="${localList.sggNm}">${localList.sggNm}</option>
                    </c:forEach>
                </select>
                <select name="selectOption2" id="selectOption2">
                    <option value="">전체</option>
                </select>
            </div>
            <div class="search option">
                <select name="rentType" id="rentType" onchange="optionType(this)">
                    <option value="매매">매매</option>
                    <option value="전세">전세</option>
                    <option value="월세">월세</option>
                </select>

                <select name="rentGtn" id="rentGtn">
                    <option value="">가격(만원)</option>
                </select>

                <select name="chooseType" id="chooseType">
                    <option value="area0">면적</option>
                    <option value="area1">~ 30이하</option>
                    <option value="area2">30초과 ~ 60이하</option>
                    <option value="area3">60초과 ~ 120이하</option>
                    <option value="area4">120초과</option>
                </select>
            </div>
            <div class="btn_box">
                <button onclick="retrieveRealEstate(1)">조회</button>
            </div>
        </div>
    </div>
    <div id="content_right">
        <div class="place_body">

        </div>
    </div>
</div>

<%--검색 동 변경--%>
<script>
    function get_option2(state) {
        $.ajax({
            type: 'GET',
            url: '${pageContext.request.contextPath}/realEstate/list/state',
            contentType: "application/json; charset=UTF-8",
            data: {
                'state': state
            },
            dataType: 'json',
            success: function (result) {
                let selectOption2 = $('#selectOption2');
                selectOption2.empty();
                selectOption2.append($("<option value=''>전체</option>"));
                for (let dong of result) {
                    selectOption2.append($("<option>" + dong + "</option>"));
                }
            }
        }).fail(function (error) {
            alert(JSON.stringify(error));
        })
    }

</script>
<script>

    function optionType(e) {

        const type1 = ['200000', '1000000', '2000000', '3000000'];
        const type2 = ['1000', '5000', '10000', '20000'];
        const target = document.getElementById("rentGtn");

        if (e.value === "매매") {
            add = type1;
        } else {
            add = type2;
        }
        console.log(e.value);
        target.options.length = 1;

        for (x in add) {
            let opt = document.createElement("option");
            opt.value = add[x];
            opt.innerHTML = add[x];
            target.appendChild(opt);
        }
    }
</script>

</body>
</html>