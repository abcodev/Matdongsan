<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value="/resources/css/chat/chatRoom.css"/>">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body>
<div class="container">
    <div id="chat_left">
        <button onclick="createRoom();">1:1채팅 문의하</button>
        <div class="chatSelect">
            <ul class="nav nav-tabs">
                <li class="nav-item">
                    <a class="nav-link active" href="#">전체</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">미확인</a>
                </li>
            </ul>
        </div>
        <div class="preChatList">
            <c:forEach items="${room}" var="room">
            <div class="preChat">
                <div class="photo"></div>
                <div class="desc-contact">
                    <p class="name">${room.chatRoomNo}</p>
                    <p class="message">${room.memberNo}</p>
                </div>
                <div class="chat_alert">
                    <div class="date">날짜</div>
                    <div class="new">NEW</div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
<%--    <!-- JavaScript -->--%>
<%--    <script src="/webjars/vue/2.5.16/dist/vue.min.js"></script>--%>
<%--    <script src="/webjars/axios/0.17.1/dist/axios.min.js"></script>--%>
<%--    <script>--%>
<%--        var vm = new Vue({--%>
<%--            el : '#chat_left'--%>

<%--        })--%>
<%--    </script>--%>
    <script>
        // function createRoom(){
        //     let
        // }
    </script>


    <div id="chat_right">
        <div class="header-chat">
            <div class="name">이름</div>
        </div>
        <div class="chat">
            <div class="messages-chat">
                <div class="message text-only">
                <p class=" text">안녕하세요</p>
                </div>
            <div class="message text-only">
            <p class=" text">안녕하세요</p>
        </div>

        <div class="message text-only">
            <div class="response">
                <p class="text"> 안녕하세요 맛동산입니다</p>
            </div>
        </div>
        <div class="message text-only">
            <div class="response">
                <p class="text"> 문의내용 말씀해주세요.</p>
            </div>
        </div>
    </div>
</div>
<div class="footer-chat">
    <input type="text"/>
    <div class="bi bi-send"></div>
</div>
</div>
</div>
</body>

</html>