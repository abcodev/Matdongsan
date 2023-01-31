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
    <style>
        th {
            width: 100px;
        }
        table{
            border: 1px solid black;
        }
    </style>
</head>
<body>

<head>
    <title>관리자 화원관리 페이지</title>
</head>

<%@ include file ="../template/header.jsp" %>
<div>
    <br><br><br><br><br><br><br>
    <button type="button" id="movePage">회원관리</button>
    <button type="button">신고관리</button>


    <br><br><br><br><br>
    <table>
        <tr>
            <th>신고번호</th>
            <th>신고받은사람</th>
            <th>한사람</th>
            <th>신고 사유</th>
            <th>상세보기</th>
            <th>게시글 상태</th>
            <th>활동 정지</th>

        </tr>

<c:forEach var="rl" items="${list2}">
            <tr>
                <input type="hidden" value="${rl.freeBno}"/>
                <th>${rl.reportNo}</th>
                <th>${rl.email}</th>
                <th>${rl.reportedEmail}</th>
                <th>${rl.reportReason}</th>
                <th><button onclick="movePage(${rl.freeBno})">상세보기</button></th>
                <th><button id="deleteBoard">처리중</button></th>
                <th><select id="stop" onchange="changeSelect()">
                    <option>3일정지</option>
                    <option>7일정지</option>
                    <option>영구정지</option>
                </select></th>

            </tr>

</c:forEach>

    </table>

    <br><br><br><br><br><br><br>

    <ul class="pagination">

        <li class="disabled"><a><<</a></li>

        <li class="disabled"><a><</a></li>

        <li class="disabled active"><a>1</a></li>

        <li class="goPage" data-page="2"><a>2</a></li>

        <li class="goPage" data-page="3"><a>3</a></li>

        <li class="disabled"><a>></a></li>

        <li class="goLastPage"><a>>></a></li>

    </ul>
</div>

<script>
    $(function(){
        $("#movePage").click(function(){
            $.ajax({
                type:"POST",
                url:"/Matdongsan/admin/userList",
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
        var stop  = document.getElementById("stop");
        var value = (stop.options[stop.selectedIndex].value);
        alert(value +" 처리하시겠습니까?");

    };

    function movePage(){
        location.href = '${pageContext.request.contextPath}/freeList/detail/'+${list.freeBno};
    }
    $(function(){
        $("#deleteBoard").click(function() {
            alert("게시글 삭제처리하시겠습니까?")
        })
    });

    $(function(){
        $("#deleteBoard2").disabled();

        })

    /*페이징처리*/







</script>
</body>
</html>




