<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="../../resources/css/chat/chatRoom.css" rel="stylesheet">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

</head>

<body>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
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
        <div class="preChatList">
            <div class="preChat">
                <div class="photo"></div>
                <div class="desc-contact">
                    <p class="name">이름</p>
                    <p class="message">최근채팅 내용</p>
                </div>
                <div class="chat_alert">
                    <div class="date">날짜</div>
                    <div class="new">NEW</div>
                </div>
            </div>
            <div class="preChat">
                <div class="photo"></div>
                <div class="desc-contact">
                    <p class="name">이름</p>
                    <p class="message">최근채팅 내용</p>
                </div>
                <div class="chat_alert">
                    <div class="date">날짜</div>
                    <div class="new">NEW</div>
                </div>
            </div>
        </div>
    </div>
    <div id="chat_right">
        <div class="header-chat">
            <div class="name">이름</div>
        </div>
        <div class="chat">
            <div class="messages-chat">
                <div class="message text-only"">
                <p class=" text">안녕하세요</p>
            </div>
            <div class="message text-only"">
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
    <input type="text"></input>
    <div class="bi bi-send"></div>
</div>
</div>
</div>
</body>

</html>