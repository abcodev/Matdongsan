<%@ page language="java" pageEncoding="UTF-8" %>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

</head>

<%@ include file ="../template/header.jsp" %>

<body>
<div class="container">
    <div id="chat_left">
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
        <div class="preChatList" >
            <c:forEach items="${chattingList}" var="chattingList">
            <div class="preChat">
                <div class="photo"><img src="${chattingList.profileImage}"/></div>
                <div class="desc-contact">
                    <input type="hidden" class="roomNo" value="${chattingList.roomNo}" id="${chattingList.roomNo}">
                    <p class="name">${chattingList.memberName}</p>
                    <p class="${chattingList.roomNo}_message message">${chattingList.latestMessage}</p>
                </div>
                <div class="chat_alert">
                    <div class="${chattingList.roomNo}_date date date">${chattingList.latestMessageTime}</div>

                    <c:if test="${chattingList.read eq 'N'}">
                        <div class="${chattingList.roomNo}_new new" style="display: block">NEW</div>
                    </c:if>
                    <c:if test="${chattingList.read eq 'Y'}">
                        <div class="${chattingList.roomNo}_new new" style="display: none">NEW</div>
                    </c:if>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    <div id="chat_right">
        <div class="header-chat">
            <div class="name">이름</div>
        </div>
        <div class="chat">
            <div class="messages-chat">
                <div class="message text-only">
                    <div class="request">
                        <p class="text">받기</p>
                    </div>
                </div>
            <div class="message text-only">
                <div class="response">
                    <p class="text">보내기</p>
                </div>
            </div>
            </div>
        </div>
    <div class="footer-chat">
        <input id="chat-input" type="text"/>
        <input id="roomNo-send" type="hidden">
        <div class="bi bi-send" onclick="send();"></div>
    </div>
    </div>
</div>
<script>
    let currentChatRoom = '';

    window.onload = function(){
        connection();
    }

    function connection(){
        let socket = new SockJS("/Matdongsan/mainPage");
        stompClient = Stomp.over(socket);
        stompClient.connect({}, onConnected());
    }

    function onConnected(){
        <c:forEach items="${chattingList}" var="chattingList">
            setTimeout(function(){
                stompClient.subscribe('/topic/'+'${chattingList.roomNo}', function (e){
                    showMessage(JSON.parse(e .body));
                });
            }, 500);
        </c:forEach>
    }


    function showMessage(data){
        console.log(data);
        let content = data;
        $('.' + content.roomNo + '_new').css('display', 'block');
        $('.' + content.roomNo + '_message').text(content.message);

        if(content.memberNo == '${loginUser.memberNo}'){
            $('.response').append("<p class='text'>"+content.message+"</p>");
        }else{
            $('.request').append("<p class='text'>"+content.message+"</p>");
        }
        if(currentChatRoom === content.roomNo){
            clickPreChat(content.roomNo)
        }

    }


    $('.preChat').on('click',function(){
        let target = this
        let ClickRoomNo = target.querySelector('.roomNo').value

        currentChatRoom = ClickRoomNo;
        $('.' + ClickRoomNo + '_new').css('display', 'none');

        $.ajax({
            url : '${pageContext.request.contextPath}/chat/admin/enterChat',
            type: "POST",
            data : {'roomNo' : ClickRoomNo},
            success : function (res){
                $('#roomNo-send').remove();
                $('.text').remove();
                let result = res;
                $('#roomNo-send').val(result.roomNo)
                chatList(result)
            },
            fail:function (){
                console.log("메세지 불러오기에 실패하였습니다. 새로고침해주세요.");
            }
        })
    })

    function clickPreChat(roomNo) {
        $('.' + roomNo + '_new').css('display', 'none');
    }


    function chatList(result){
        if(result != null) {
            for(let i in result) {
                console.log(result[i].memberNo);
                if(result[i].memberNo == '${loginUser.memberNo}'){
                    $('.response').append("<p class='text'>"+result[i].message+"</p>");
                }else{
                    $('.request').append("<p class='text'>"+result[i].message+"</p>");
                }
            }
        }
    }


    function send(){
        if($("#chat-input").val() == ''){
            return false;
        }
        const roomNo = currentChatRoom;
        const data = {
            'memberNo' : ${loginUser.memberNo},
            'message': $("#chat-input").val(),
            'roomNo' : roomNo
        };
        // send(destination,헤더,페이로드)
        stompClient.send("/app/chat/send", {}, JSON.stringify(data));
        $("#chat-input").val('');
    }
    $("#chat-submit").click(function (e) {
        e.preventDefault();
    })
</script>
</body>

</html>