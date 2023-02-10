<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ page language="java" pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <title>Document</title>

</head>
<body>

<%@ include file ="../template/header.jsp" %>
<div id="headeer"></div>
<div id="button2">
    <button class="b2" id="movePage">회원관리</button>
    <button type="button" id="b1">신고관리</button>
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
                <td><button type="button" class="btn22" onclick="movePage(${rl.FNo},'${rl.reportType}')">상세보기</button></td>
                <c:choose>
                <c:when test="${rl.QStatus  == 'Y' && rl.FStatus == 'Y' }">
                <td><button type="button" class="add-btn" id="btnOn"  data-no="${rl.FNo}" data-type='${rl.reportType}'>처리중</button></td>
                </c:when>
                <c:otherwise>
                    <td><button type="button" id="btnClose">처리완료</button></td>
                </c:otherwise>
                </c:choose>
                <td><select id="reportPeriod" name="reportPeriod">
                <option>정지기간선택</option>
                <option value="three">3일정지</option>
                <option value="seven">7일정지</option>
                <option value="infinity">영구정지</option>
                 </select>
                <button type="submit">정지확인</button>
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
            <input type="hidden" id="fNo"  value=""/>
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
                console.log("test"+$(data).find("#tableDiv"));
                console.log($(data).find("#tableDiv").length);
                if ($(data).find("#tableList").length > 0) {
                    $('.reportTable').html($(data).find("#tableDiv"))
                } else {
                    $('.reportTable').html('<p>조회된 회원이 없습니다.</p>');
                }

            }
        })
    }



    $(function(){
        $("#movePage").click(function(){
            $.ajax({
                type:"POST",
                url:"/Matdongsan/admin/userList/" +${fNo},
                data: {},
                dataType: "html",
                cache : false,
                success(data){
                    $("body").html(data);
                }
            });
        });
    });
    function changeSelect(){
        const stop = document.getElementById("stop");
        const value = (stop.options[stop.selectedIndex].value);
        alert(value +" 처리하시겠습니까?");
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


    function movePage(fNo,reportType){
        if(reportType === '질문게시판'){
            location.href = '${pageContext.request.contextPath}/board/detail/'+fNo;
        }else{
            location.href = '${pageContext.request.contextPath}/board/freeList/detail/'+fNo;
        }
    }
    function movePage2(){
        let fNo = $("#fNo").val();
        let rType = $("#rType").val();
        if(rType === '질문게시판'){
            location.href = '${pageContext.request.contextPath}/admin/deleteQna/' +fNo;
            alert("질문게시판 삭제처리 완료")

        }else{
            location.href = '${pageContext.request.contextPath}/admin/deleteFree/'+fNo;
            alert("자유게시판 삭제처리 완료")

        }





    }















</script>
</body>
</html>




