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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<div class="floating-chat">
  <div id="chat-circle" class="btn btn-raised">
    <i class="fa-regular fa-comments"></i><p>1:1문의</p>
  </div>
  <div class="chat-box">
    <div class="chat-box-header">
      <span></span>
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
        <input type="text" id="chat-input" placeholder="문의내용을 작성해주세요" />
        <button type="submit" class="chat-submit" id="chat-submit"><i
                class="fa-regular fa-paper-plane"></i></button>
      </form>
    </div>
  </div>
</div>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.5.2/sockjs.min.js"></script>
<!-- STOMP -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

<script>
  $(function () {
    var INDEX = 0;
    $("#chat-submit").click(function (e) {
      e.preventDefault();
      var msg = $("#chat-input").val();
      if (msg.trim() == "") {
        return false;
      }
      generate_message(msg, "self");
      var buttons = [
        {
          name: "Existing User",
          value: "existing"
        },
        {
          name: "New User",
          value: "new"
        }
      ];
      setTimeout(function () {
        generate_message(msg, "user");
      }, 1000);
    });

    function generate_message(msg, type) {
      INDEX++;
      var str = "";
      str += "<div id='cm-msg-" + INDEX + "' class=\"chat-msg " + type + '">';
      str += '          <span class="msg-avatar">';
      str += "          </span>";
      str += '          <div class="cm-msg-text">';
      str += msg;
      str += "          </div>";
      str += "        </div>";
      $(".chat-logs").append(str);
      $("#cm-msg-" + INDEX)
              .hide()
              .fadeIn(300);
      if (type == "self") {
        $("#chat-input").val("");
      }
      $(".chat-logs")
              .stop()
              .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
    }

    function generate_button_message(msg, buttons) {
      /* Buttons should be object array
        [
          {
            name: 'Existing User',
            value: 'existing'
          },
          {
            name: 'New User',
            value: 'new'
          }
        ]
      */
      INDEX++;
      var btn_obj = buttons
              .map(function (button) {
                return (
                        '              <li class="button"><a href="javascript:;" class="btn btn-primary chat-btn" chat-value="' +
                        button.value +
                        '">' +
                        button.name +
                        "</a></li>"
                );
              })
              .join("");
      var str = "";
      str += "<div id='cm-msg-" + INDEX + '\' class="chat-msg user">';
      str += '          <span class="msg-avatar">';
      str += "          </span>";
      str += '          <div class="cm-msg-text">';
      str += msg;
      str += "          </div>";
      str += '          <div class="cm-msg-button">';
      str += "            <ul>";
      str += btn_obj;
      str += "            </ul>";
      str += "          </div>";
      str += "        </div>";
      $(".chat-logs").append(str);
      $("#cm-msg-" + INDEX)
              .hide()
              .fadeIn(300);
      $(".chat-logs")
              .stop()
              .animate({ scrollTop: $(".chat-logs")[0].scrollHeight }, 1000);
      $("#chat-input").attr("disabled", true);
    }

    $(document).delegate(".chat-btn", "click", function () {
      var value = $(this).attr("chat-value");
      var name = $(this).html();
      $("#chat-input").attr("disabled", false);
      generate_message(name, "self");
    });

    $("#chat-circle").click(function () {
      $("#chat-circle").toggle("scale");

      $.ajax({
        url: '${pageContext.request.contextPath}/createChatRoom',
        type: "POST"
      })
              .then(function (){
                $(".chat-box").toggle("scale");

              })
              .fail(function (){
                alert("로그인후 이용가능합니다")
              })
    });

    $(".chat-box-toggle").click(function () {
      $("#chat-circle").toggle("scale");
      $(".chat-box").toggle("scale");
    });
  });
</script>
</body>
</html>
