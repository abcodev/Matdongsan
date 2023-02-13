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
  <link rel="stylesheet" href="<c:url value="/resources/css/chat/chat_pop.css"/>">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

</head>
<body>
<div class="floating-chat">
  <div id="chat-circle" class="btn btn-raised">
    <i class="fa-regular fa-comments"></i>
    <p>1:1문의</p>
  </div>
  <div class="chat-box">
    <div class="chat-box-header">
      <span>1:1 문의</span>
      <span class="chat-box-toggle"><i class="fa-solid fa-xmark"></i></span>
    </div>
    <div class="chat-box-body">
      <div class="chat-box-overlay">
      </div>
      <div class="chat-logs">
        <!--채팅들 들어갈 공간 -->
      </div>
    </div>
    <div class="chat-input">
      <form>
        <input type="hidden" id="roomNo">
        <input type="text" id="chat-input" placeholder="문의내용을 작성해주세요"/>
        <button type="submit" class="chat-submit" id="chat-submit">
          <i class="fa-regular fa-paper-plane" onclick="send();"></i>
        </button>
      </form>
    </div>
  </div>
</div>
<script>

  $("#chat-circle").click(function () {
    if (${empty loginUser}) {
      alert("로그인 후 이용하실 수 있습니다.")
    } else {
      console.log("로그인 필요!")
      $.ajax({
        url: '${pageContext.request.contextPath}/createChatRoom',
        type: "POST",
        success: function (result) {
          $("#chat-circle").toggle("scale");
          $(".chat-box").toggle("scale");
          let roomNo = result.room.roomNo;
          let messageList = result.messageList;
          loadChat(messageList);
          $("#roomNo").val(roomNo);
          connection(roomNo);
        },
        fail: function () {
          console.log("실패")
          alert("사용 실패")
          $("#chat-circle").toggle("scale");
        }
      })
    }
  });


  $(".chat-box-toggle").click(function () {
    $("#chat-circle").toggle("scale");
    $(".chat-box").toggle("scale");
    $('.chat-logs').empty();
    stompClient.disconnect();
  });


  function connection(roomNo) {
    let socket = new SockJS("/Matdongsan/mainPage");
    stompClient = Stomp.over(socket);
    stompClient.connect({}, onConnected(roomNo));
  }

  // setTimeout : 몇초뒤에 특정 함수 호출
  // 함수가 즉시 실행되면 에러가 날 수 있음 (사용하는 라이브러리가 불러와지고 난 후에 실행되고나서 실행돼야)
  function onConnected(roomNo) {
    alert("연결 성공!");
    // console.log('Connected: ' + frame);
    setTimeout(function () {
      stompClient.subscribe('/topic/' + roomNo, function (e) {
        showMessage(JSON.parse(e.body));
      });
    }, 500);
  }

  //엔터 눌렀을때 전송
  $('#chat-input').keypress(function (e) {
    if (e.keyCode === 13) {
      e.preventDefault();
      send();
    }
  });


  // 실시간 채팅 내용
  function showMessage(data) {
    console.log(data.memberNo + " " + ${loginUser.memberNo});
    console.log()
    if (data.memberNo === ${loginUser.memberNo}) {
      console.log("me")
      $('.chat-logs').append("<div class='me'>"  +  "<div>"+ data.message + "</div>" + "</div>"); // 내가 보낸 메세지
    } else {
      console.log("other")
      $('.chat-logs').append("<div class='other'>" + "<div>"+ data.message + "</div>" + "</div>"); // 남이 보낸 메세지
    }
  }

  // 이전 채팅 내용 불러오는 함수
  function loadChat(messageList) {
    if (messageList != null) {
      for (let i in messageList) {
        console.log(messageList[i].sendNo);
        if (messageList[i].sendNo === '${loginUser.memberNo}') {
          $('.chat-logs').append("<div class='me'>" + "<div>"+ messageList[i].content + "</div>" + "</div>");// 내가 보낸 메세지
        } else {
          $('.chat-logs').append("<div class='other'>" + "<div>"+ messageList[i].content + "</div>" + "</div>");// 남이 보낸 메세지
        }
      }
    }
  }

  //메시지 브로커로 메시지 전송
  function send() {
    if ($("#chat-input").val() == '') {
      return false;
    }
    const roomNo = $("#roomNo").val();
    // Type : ${loginUser} 의 Grade 가 ADMIN 이면 ANSWER, 아니면 QUESTION
    const data = {
      'memberNo': '${loginUser.memberNo}',
      'message': $("#chat-input").val(),
      'roomNo': roomNo
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
