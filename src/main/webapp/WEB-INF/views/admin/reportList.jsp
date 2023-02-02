<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <table>
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
<tbody>
<c:forEach var="rl" items="${list2}">
            <tr>

                <td>${rl.reportType}</td>
                <td>${rl.reportNo}</td>
                <td>${rl.email}</td>
                <td>${rl.boardWriter}</td>
                <td>${rl.reportContent}</td>
                <td><button type="button" onclick="movePage(freeBno)">상세보기</button></td>
                <td><button type="button" class="btn" id="add-btn">처리중</button></td>
                <td><select id="stop" onchange="changeSelect()">
                    <option>3일정지</option>
                    <option>7일정지</option>
                    <option>영구정지</option>
                </select></td>
            </tr>
</c:forEach>
</tbody>

    </table>




<div class="modal" id="modal">
    <div class="modal_body">
        <div class="m_head">
            <div class="modal_title">게시글을 삭제처리하시겠습니까?</div>
            <div class="close_btn" id="close_btn">X</div>
        </div>
        <div class="m_body">

            <button type="button"><a href="${pageContext.request.contextPath}/board/delete/${qb.qnaBno}" class="deleteBoard">예</a></button>
            <div class="modal_label">Description</div>
            <button type="button" class="close_btn">아니요</button>
        </div>

    </div>
</div>






</div>

<script>


    $(function(){
        $("#movePage").click(function(){
            $.ajax({
                type:"POST",
                url:"/Matdongsan/admin/userList",
                data: {freeBno : '${freeBno}'},
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

    function movePage(freeBno){
        location.href = '${pageContext.request.contextPath}/freeBoard/detail/'+freeBno;
    }


    $(function(){
        $("#deleteBoard2").disabled();
        });

   /* 모달*/
    $(document).on('click', '#add-btn', function (e) {
        console.log("click event");
        $('#modal').addClass('show');

    });

    // 모달 닫기
    $(document).on('click', '#close_btn', function (e) {
        console.log("click event");
        $('#modal').removeClass('show');

    });



    /*페이징처리*/







</script>
</body>
</html>




