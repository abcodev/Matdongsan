<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>동네맛집리스트</title>
    <link rel="stylesheet" href="동네맛집리스트.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<div id="content">
    <div id="place_head">
        <div class="place city">
            <select></select>
        </div>
        <div class="place hashtag">
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
            <input type="checkbox" class="btn-check" id="btn-check-outlined" autocomplete="off">
            <label class="btn btn-outline-secondary" for="btn-check-outlined">#해시태그</label>
        </div>
    </div>
    <div id="place_body">
        <div class="place_list">

<%--            <c:set var="i" value="0"/>--%>
<%--            <c:set var="j" value="4"/>--%>
<%--            <table border=1>--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${selectCultureList != null && fn:length(selectCultureList) > 0 }">--%>
<%--                        <c:forEach items="${selectCultureList}" var="selectCultureList">--%>
<%--                            <c:if test="{i%j == 0}">--%>
<%--                                <tr>--%>
<%--                            </c:if>--%>

<%--                            <td align="center">--%>
<%--                                <a href="cultureDetail?svcId=${selectCultureList.svcId}">링크</a><br>--%>
<%--                                <img src="<c:out value="${selectCultureList.imgUrl}" />" width="250px" height="300px">--%>
<%--                                <hr>--%>
<%--                                <c:out value="${selectCultureList.minClassName}"/> <br>--%>
<%--                                <c:out value="${selectCultureList.serviceName}"/><br>--%>
<%--                                <c:out value="${selectCultureList.svcId}"/>--%>
<%--                            </td>--%>


<%--                            <c:if test="${i%j == j-1}">--%>
<%--                                </tr>--%>
<%--                            </c:if>--%>
<%--                            <c:set var="i" value="${i+1}"/>--%>
<%--                        </c:forEach>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <tr>--%>
<%--                            <td>내역이 존재하지 않습니다.</td>--%>
<%--                        </tr>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </table>--%>



<%--            <div class="place info">--%>
<%--                <img src="맛집.jpg">--%>
<%--                <div>가게명</div>--%>
<%--                <div>별점</div>--%>
<%--            </div>--%>
<%--            <div class="place info">--%>
<%--                <img src="맛집.jpg">--%>
<%--                <div>가게명</div>--%>
<%--                <div>별점</div>--%>
<%--            </div>--%>
<%--            <div class="place info">--%>
<%--                <img src="맛집.jpg">--%>
<%--                <div>가게명</div>--%>
<%--                <div>별점</div>--%>
<%--            </div>--%>

        </div>
    </div>
</div>
</body>
</html>