<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/restaurant/restaurantList.css"/>">
<jsp:include page="../template/font.jsp"></jsp:include>

<div id="chat_contents_ajax">
    <div class="header-chat">
        <div class="name">사용자</div>
    </div>
    <div class="chat">
        <div class="messages-chat">
            <c:forEach items="${chattingList}" var="chatMessage">
                <c:choose>
                    <c:when test="${chatMessage.memberNo eq 1}">
<%--                        <div class="message text-only">--%>
                            <div class="response">
                                <p class="text">${chatMessage.message}</p>
                            </div>
<%--                        </div>--%>
                    </c:when>
                    <c:otherwise>
<%--                        <div class="message text-only">--%>
                            <div class="request">
                                <p class=" text">${chatMessage.message}</p>
                            </div>
<%--                        </div>--%>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </div>
    </div>
    <div class="footer-chat">
        <input id="chat-input" type="text"/>
        <input id="roomNo-send" type="hidden">
        <div class="bi bi-send" id="sendMessage" onclick="send();"/>
    </div>
</div>
<script>
    //엔터 눌렀을때 전송
    $('#chat-input').keypress(function(e){
        if(e.keyCode===13){
            send();
        }
        $('.chat').scrollTop($('.chat').prop('scrollHeight'));
    });

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
</script>