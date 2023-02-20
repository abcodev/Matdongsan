<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>관리자 채팅방 리스트</title>
    <%@ include file ="../template/header.jsp" %>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/resources/css/chat/chatRoom.css"/>">
    <!-- CSS only -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
</head>

<body>
<div class="container">
    <div id="chat_left">
        <div class="chatSelect">
            <img src="https://cdn-icons-png.flaticon.com/512/1910/1910995.png">
            <p>1:1 문의 내역</p>
        </div>
        <div class="preChatList" >
            <c:forEach items="${chattingList}" var="chattingList">
                <div class="preChat ${chattingList.read eq 'N' ? 'new_preChat':''}" >
                    <div class="photo"><img src="${chattingList.profileImage}"/></div>
                    <div class="desc-contact">
                        <input type="hidden" class="roomNo" value="${chattingList.roomNo}" id="${chattingList.roomNo}">
                        <p class="name" id="nickName">${chattingList.nickName}</p>
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
    <div id="middle"></div>
    <div id="chat_right">
        <div class="basicImage">
            <img src="https://cdn-icons-png.flaticon.com/512/3069/3069806.png">
            <div> 현재 활성화된 채팅이 없습니다.</div>
            <div> 1:1 문의 내역에서 채팅을 선택해주세요</div>
        </div>
    </div>
</div>
<script>
    let currentChatRoom = '';

    window.onload = function(){
        connection();
    }

    function connection(){
        let socket = new SockJS("/mainPage");
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
        let content = data;
        $('.' + content.roomNo + '_message').text(content.message);
        $('.' + content.roomNo + '_date').text(calender());

        if(content.memberNo == '${loginUser.memberNo}'){
            $('.messages-chat').append("<div class='response'><span class='text'>"+content.message+"</span></div>");
        }else{
            $('.' + content.roomNo + '_new').css('display', 'block').addClass('new');
            $('.' + content.roomNo + '_new').parent().parent().addClass('new_preChat');
            $('.messages-chat').append("<div class='request'><span class='text'>"+content.message+"</span></div>");

        }
        if(currentChatRoom === content.roomNo){
            clickPreChat(content.roomNo)
            $.ajax({
                url : '${pageContext.request.contextPath}/updateMessage',
                type: "post",
                data : data,
                success : function (){
                    console.log("읽음처리 성공")
                }
            })
        }
    }

    function calender(){
        const today = new Date();
        const year = today.getFullYear();
        const month = ('0' + (today.getMonth() + 1)).slice(-2);
        const day = ('0' + today.getDate()).slice(-2);
        const hours = today.getHours();
        let minutes = today.getMinutes();
        if(minutes <10){
            minutes = '0'+minutes;
        }
        const currentDate = year + '-' + month + '-' + day + '  '+ hours + ':' + minutes;
        return currentDate;
    }


    $('.preChat').on('click',function(){
        let target = this
        let ClickRoomNo = target.querySelector('.roomNo').value
        let nickName = target.querySelector('#nickName').innerText;

        currentChatRoom = ClickRoomNo;
        $('.' + ClickRoomNo + '_new').removeClass('new').css('display', 'none');
        $(this).removeClass('new_preChat');
        $('.image').empty();
        $.ajax({
            url : '${pageContext.request.contextPath}/chat/admin/enterChat',
            type: "GET",
            data : {'roomNo' : ClickRoomNo},
            success : function (res){
                const html = jQuery('<div>').html(res);
                const contents = html.find('div#chat_contents_ajax').html();
                $('#chat_right').html(contents)
                $('#titleName').text(nickName);
            },
            fail:function (){
                Swal.fire({
                    icon: 'error',
                    title: '서버 오류.'
                });
            }
        })
    })
    function clickPreChat(roomNo) {
        $('.' + roomNo + '_new').css('display', 'none');
    }
</script>
</body>
</html>


