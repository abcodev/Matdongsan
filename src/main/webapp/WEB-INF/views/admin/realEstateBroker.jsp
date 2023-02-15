<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8" %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/resources/css/admin/userList.css"/>">
    <title>부동산 중개업자 신청 관리</title>
</head>
<body>

<%@ include file="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button type="button" class="b1" id="userList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">회원관리</button>
    <button type="button" class="b2" id="reportList" style="color: #585c9c; background: #eaeaed; border: #eaeaed">신고관리</button>
    <button type="button" class="b3" id="moveBrokerList" style="color: white; background: #585c9c; border: white">부동산관리</button>
</div>
<br><br><br><br>
<div class="brokerTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>중개자 이름</th>
            <th>이메일</th>
            <th>부동산 이름</th>
            <th>공인중개사 번호</th>
            <th>전화번호</th>
            <th>첨부파일</th>
            <th>처리상태</th>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="broker" items="${brokerList}">
            <tr>
                <td>${broker.memberName}</td>
                <td>${broker.email}</td>
                <td>${broker.agentName}</td>
                <td>${broker.agentNo}</td>
                <td>${broker.agentPhone}</td>
                <td><a href="${broker.attachment}" download="${broker.agentName}_${broker.memberNo}"><button>다운로드</button></a></td>
                <td>
                    <c:if test="${broker.applyStatus eq 'A'}">
                        <button type="button" class="add-btn" id="btnOn" onclick="showApproveModal('${broker.agentNo}', ${broker.memberNo})">
                                승인대기
                        </button>
                    </c:if>
                    <c:if test="${broker.applyStatus eq 'Y'}">
                        <button type="button" class="add-btn" id="btnOn2" disabled="disabled">
                                승인 완료
                        </button>
                    </c:if>
                    <c:if test="${broker.applyStatus eq 'N'}">
                        <button type="button" class="add-btn" id="btnOn2" disabled="disabled">
                                승인 거절
                        </button>
                    </c:if>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div id="paging">
    <ul class="pagination">
        <c:choose>
            <c:when test="${ pi.currentPage eq 1 }">
                <li class="page-item disabled"><</li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="brokerList(${pi.currentPage - 1})"><</li>
            </c:otherwise>
        </c:choose>

        <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
            <li class="page-item" onclick="brokerList(${item})">${item }</li>
        </c:forEach>

        <c:choose>
            <c:when test="${ pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#">></a></li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="brokerList(${pi.currentPage + 1})">></li>

            </c:otherwise>
        </c:choose>
    </ul>

</div>


<!-- Modal -->
<div class="modal" id="modal">
    <div class="modal_body">
        <div class="m_head">
            <div class="modal_title">승인하시겠습니까?</div>
            <div class="close_btn" id="close_btn">X</div>
        </div>
        <div class="m_body">
            <button type="button" id="clear" class="btn handleApply" value="consent">승인</button>
            <button type="button"  class="btn close_btn handleApply" id="close_btn2" value="reject">거부</button>
        </div>

    </div>
</div>

<script>

    let agentNo = "";
    let memberNo = "";

    $("#reportList").click(function () {
        location.href = '${pageContext.request.contextPath}/admin/reportList';
    });

    $("#userList").click(function () {
        location.href = '${pageContext.request.contextPath}/admin/userList';
    });

    function showApproveModal(agent, member) {
        $('#modal').addClass('show');
        // TODO : 이벤트 발생하는 곳
        agentNo = agent;
        memberNo = member;
    }

    $(document).on('click', '#close_btn', function (e) {
        $('#modal').removeClass('show');

    });

    $('.handleApply').click(function (){
        let status = $(this).val();
        $.ajax({
            type : "POST",
            url : "${pageContext.request.contextPath}/admin/broker/handleApply",
            contentType: "application/json; charset=UTF-8",
            data: JSON.stringify({
                'handle': status,
                'agentNo': agentNo,
                'memberNo': memberNo
            }),
            success : function (result){
                console.log(result)
                document.location.href = document.location.href;
            }
        })
    })

    function brokerList(current_page) {
        console.log(current_page)
        $.ajax({
            url: '${pageContext.request.contextPath}/admin/brokerList',
            method: 'GET',
            data: {
                cpage: current_page,
            },
            dataType: 'html',
            success: function (data) {
                $('#tableDiv').empty();
                $('.pagination').empty();
                $('#paging').html($(data).find('.pagination')) ;
                if ($(data).find("#tableList").length > 0) {
                    $('.brokerTable').html($(data).find("#tableDiv"))
                } else {
                    $('.brokerTable').html('<p>조회된 회원이 없습니다.</p>');
                }

            }
        })
    }
</script>
</body>
</html>
