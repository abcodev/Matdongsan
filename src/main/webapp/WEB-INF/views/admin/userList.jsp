<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>회원 리스트</title>
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <%@ include file="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/userList.css"/>">
    <jsp:include page="../template/font.jsp"/>
    <!-- 페이징 부트 스트랩 -->
</head>
<body>
<div id="headeer"></div>
<div id="button2">
    <button type="button" class="b1" id="userList" style="color: white; background: #585c9c; border: white">회원관리</button>
    <button type="button" class="b2" id="reportList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">신고관리</button>
    <button type="button" class="b3" id="moveBrokerList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">부동산관리</button>
</div>
<br><br><br><br>
<div class="memberTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>회원번호</th>
            <th>소셜계정</th>
            <th>아이디</th>
            <th>회원명</th>
            <th>닉네임</th>
            <th>최근 접속일</th>
            <th>회원등급</th>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="ul" items="${userList}">
            <tr id="memberData">
                <td>${ul.memberNo}</td>
                <td>${ul.provider}</td>
                <td>
                        ${fn:substring(ul.providerId, 0, fn:length(ul.providerId)-6)}******
                </td>
                <td>${ul.memberName}</td>
                <td>${ul.nickName}</td>
                <td>
                        ${fn:substring(ul.recentAccess, 0, 16)}
                </td>
                <td>
                    <c:choose>
                        <c:when test="${ul.grade eq 'ADMIN'}">
                            관리자
                        </c:when>
                        <c:when test="${ul.grade eq 'BROKER'}">
                            부동산 제휴회원
                        </c:when>
                        <c:when test="${ul.grade eq 'GENERAL'}">
                            준회원
                        </c:when>
                        <c:otherwise>정회원</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div id="paging">
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-item disabled"><a class="page-link" href="#">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" onclick="retrieveUserList(${pi.currentPage - 1})">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                    </li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" onclick="retrieveUserList(${item})">${item }</a></li>
            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" onclick="retrieveUserList(${pi.currentPage + 1})">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
    </nav>
</div>
















<script>

    $('#moveBrokerList').click(function () {
        location.href = "${pageContext.request.contextPath}/admin/brokerList"
    });

    $("#reportList").click(function () {
        location.href = "${pageContext.request.contextPath}/admin/reportList"
    });

    function retrieveUserList(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/admin/userList',
            method: 'GET',
            data: {
                cpage: current_page,
            },
            dataType: 'html',
            success: function (data) {
                $('#tableDiv').empty();
                $('.pagination').empty();
                $('#paging').html($(data).find('.pagination')) ;
                if ($(data).find("#memberData").length > 0) {
                    $('.memberTable').html($(data).find("#tableDiv"))
                } else {
                    $('.memberTable').html('<p>조회된 회원이 없습니다.</p>');
                }
            }
        })
    }




</script>
</body>
</html>