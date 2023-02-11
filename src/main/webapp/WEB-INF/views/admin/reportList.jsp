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

    <title>Document</title>

</head>
<body>

<%@ include file="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button id="b1">회원관리</button>
    <button type="button" class="b2" id="reportList">신고관리</button>
    <button type="button" class="b3" id="moveBrokerList">부동산중개업자신청 관리</button>
</div>
<br><br><br><br>
<div class="reportTable">
    <table id="tableDiv">
        <thead>
        <tr>
            <th>신고게시판</th>
            <th>신고번호</th>
            <th>신고받은사람</th>
            <th>한사람</th>
            <th>신고 사유</th>
            <th>상세보기</th>
            <th>게시글 상태</th>
            <th>활동 정지</th>
        </tr>
        </thead>
        <tbody id="tableList">
        <c:forEach var="rl" items="${reportList}">
            <tr>
                <td>${rl.reportType}</td>
                <td>${rl.reportNo}</td>
                <td>${rl.reportEmail}</td>
                <td>${rl.email}</td>
                <td>${rl.reportContent}</td>
                <td>
                    <button type="button" class="btn22" onclick="movePage(${rl.FNo},'${rl.reportType}')">상세보기</button>
                </td>
                <c:choose>
                    <c:when test="${rl.QStatus  == 'Y' && rl.FStatus == 'Y'}">
                        <td>
                            <button type="button" class="add-btn" id="btnOn" data-no="${rl.FNo}"
                                    data-type='${rl.reportType}'>처리중
                            </button>
                        </td>
                    </c:when>
                    <c:otherwise>
                        <td>
                            <button type="button" id="btnClose">처리완료</button>
                        </td>
                    </c:otherwise>
                </c:choose>
                <td>
                    <select id="reportPeriod" name="reportPeriod">
                        <option value="0">정지기간선택</option>
                        <option value="3">3일정지</option>
                        <option value="7">7일정지</option>
                        <option value="-1">영구정지</option>
                    </select>
                    <button onclick="ban()">정지</button>
                    <script>
                        function ban() {
                            const banPeriod = $('select[name=reportPeriod]').val()
                            if (banPeriod === '0') {
                                return;
                            }
                            $.ajax({
                                url: '${pageContext.request.contextPath}/admin/report/ban',
                                type: 'POST',
                                contentType: "application/json; charset=UTF-8",
                                data: JSON.stringify({
                                    // TODO : SELECT 하는쪽 수정후 변경 필요
                                    'memberNo': 23,
                                    'banPeriod': banPeriod
                                }),
                                success() {
                                    alert("정지 완료")
                                }
                            });
                            console.log(banPeriod)
                        }
                    </script>
                </td>

            </tr>
        </c:forEach>
        </tbody>


    </table>
</div>

<div class="modal" id="modal">
    <div class="modal_body">
        <div class="m_head">
            <div class="modal_title">게시글을 삭제처리하시겠습니까?</div>
            <div class="close_btn" id="close_btn">X</div>
        </div>
        <div class="m_body">
            <input type="hidden" id="rType" value=""/>
            <input type="hidden" id="fNo" value=""/>
            <button type="button" id="clear" class="btn" onclick="movePage2()">예</button>
            <button type="button" class="btn close_btn" id="close_btn2">아니요</button>
        </div>

    </div>
</div>

<div class="paging">
    <ul class="pagination">
        <c:choose>
            <c:when test="${ pi.currentPage eq 1 }">
                <li class="page-item disabled">Previous</li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="ReportList(${pi.currentPage - 1})">Previous</li>
            </c:otherwise>
        </c:choose>

        <c:forEach var="item" begin="${pi.startPage }" end="${pi.endPage }">
            <li class="page-item" onclick="ReportList(${item})">${item }</li>
        </c:forEach>

        <c:choose>
            <c:when test="${ pi.currentPage eq pi.maxPage }">
                <li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
            </c:when>
            <c:otherwise>
                <li class="page-item" onclick="ReportList(${pi.currentPage + 1})">Next</li>

            </c:otherwise>
        </c:choose>
    </ul>

</div>


<script>

    $("#reportList").click(function () {

        $.ajax({
            type: "POST",
            url: "/${pageContext.request.contextPath}/admin/reportList/" +${fNo},
            data: {},
            dataType: "html",
            cache: false,
            success(data) {
                $("body").html(data);
            }
        });
    });

    $("#movePage").click(function () {
        $.ajax({
            type: "POST",
            url: "/${pageContext.request.contextPath}/admin/userList/" +${fNo},
            data: {},
            dataType: "html",
            cache: false,
            success(data) {
                $("body").html(data);
            }
        });
    });

    $('#moveBrokerList').click(function (){
        $.ajax({
            type : "POST",
            url : "${pageContext.request.contextPath}/admin/brokerList",
            dataType : "html",
            success : function (data){
                $("body").html(data);
            }
        })
    })


    function ReportList(current_page) {
        $.ajax({
            url: '${pageContext.request.contextPath}/admin/reportList/' + ${fNo},
            method: 'GET',
            data: {
                cpage: current_page,
            },
            dataType: 'html',
            success: function (data) {
                $('#tableDiv').empty();
                console.log("test" + $(data).find("#tableDiv"));
                console.log($(data).find("#tableDiv").length);
                if ($(data).find("#tableList").length > 0) {
                    $('.reportTable').html($(data).find("#tableDiv"))
                } else {
                    $('.reportTable').html('<p>조회된 회원이 없습니다.</p>');
                }

            }
        })
    }



    function changeSelect() {
        const stop = document.getElementById("stop");
        const value = (stop.options[stop.selectedIndex].value);
        alert(value + " 처리하시겠습니까?");
    };


    /* 모달*/
    $(document).on('click', '.add-btn', function (e) {
        console.log("click event");
        let fNo = $(this).data('no');
        let type = $(this).data('type');
        console.log(fNo);
        console.log(type);
        $("#rType").val(type);
        $("#fNo").val(fNo);
        $('#modal').addClass('show');

    });


    // 모달 닫기
    $(document).on('click', '#close_btn', function (e) {
        console.log("click event");
        $('#modal').removeClass('show');

    });


    function movePage(fNo, reportType) {
        if (reportType === '질문게시판') {
            location.href = '${pageContext.request.contextPath}/board/detail/' + fNo;
        } else {
            location.href = '${pageContext.request.contextPath}/board/freeList/detail/' + fNo;
        }
    }

    function movePage2() {
        let fNo = $("#fNo").val();
        let rType = $("#rType").val();
        if (rType === '질문게시판') {
            location.href = '${pageContext.request.contextPath}/admin/deleteQna/' + fNo;
            alert("질문게시판 삭제처리 완료")

        } else {
            location.href = '${pageContext.request.contextPath}/admin/deleteFree/' + fNo;
            alert("자유게시판 삭제처리 완료")

        }


    }


</script>
</body>
</html>




