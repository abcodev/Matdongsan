<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/2e05403237.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/realestate/realestateList.css"/>">
<jsp:include page="../template/font.jsp"/>

<div id="estate_rent_list_ajax">
        <table class="table">
            <tr>
                <th>자치구명</th>
                <th>아파트명</th>
                <th>거래 타입</th>
                <th>금액</th>
                <th>임대면적</th>
            </tr>

                <c:forEach var="estateRent" items="${ estateRentList }">
                    <tr onclick="location.href='realEstate/detail?estateNo=${estateRent.estateNo}'">
                        <td class="rno" >${ estateRent.sggNm } </td>
                        <td>${estateRent.buildName }</td>
                        <td>${estateRent.rentGbn}</td>
                        <td>${estateRent.rentGtn}</td>
                        <td>${estateRent.rentArea }</td>
                    </tr>
                </c:forEach>

        </table>

    <div id="paging">

        <ul class="pagination">
            <c:choose>
                <c:when test="${ pi.currentPage eq 1 }">
                    <li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link" onclick="retrieveRealEstate(${pi.currentPage - 1})">Previous</a>
                    </li>
                </c:otherwise>
            </c:choose>

            <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
                <li class="page-item"><a class="page-link" onclick="retrieveRealEstate(${item})">${item }</a></li>
            </c:forEach>

            <c:choose>
                <c:when test="${ pi.currentPage eq pi.maxPage }">
                    <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a class="page-link"
                                             onclick="retrieveRealEstate(${pi.currentPage + 1})">Next</a></li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>

</div>

<div id="selectFboard">
        <p>우리동네 이야기</p>
        <br>
        <c:forEach items="${selectFboard}" var="fb" begin="0" end="4" varStatus="status">
            <a style="display: block;" href="${pageContext.request.contextPath}/board/freeList/detail/${fb.boardNo}">${status.count}. ${fb.boardTitle}</a>
        </c:forEach>
</div>

<div>

</div>

<script>
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

