//package com.project.chat.controller;
//
//import com.project.chat.dto.MessageDto;
//import com.project.chat.service.ChatService;
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.event.EventListener;
//import org.springframework.messaging.handler.annotation.MessageMapping;
//import org.springframework.messaging.handler.annotation.Payload;
//import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
//import org.springframework.messaging.simp.SimpMessageSendingOperations;
//import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.socket.messaging.SessionDisconnectEvent;
//
//import java.util.ArrayList;
//
//@Slf4j
//@RequiredArgsConstructor
//@Controller
//public class ChatController {
//
//    private final SimpMessageSendingOperations template;
//    @Autowired
//    ChatService chatService;
//
//    /**
//     * MessageMapping 을 통해 WebSocket로 들어오는 메세지를 발신 처리한다.
//     * 이때 클라이언트단에서는 /pub/chat/message 로 요청하게 되고, 이것을 controller 가 받아서 처리한다.
//     * 처리가 완료되면 /sub/chat/room/ro
//     * omId 로 메세지가 전송된다.
//     */
//    @MessageMapping("/chat/enterUser")
//    public void enterUser(@Payload MessageDto message, SimpMessageHeaderAccessor headerAccessor) {
//        chatService.plusUserCnt(message.getChatRoomNo());
//        String userUUID = chatService.addUser(message.getChatRoomNo(), message.getSender());
//
//        headerAccessor.getSessionAttributes().put("userUUID",userUUID);
//        headerAccessor.getSessionAttributes().put("roomId",message.getChatRoomNo());
//
//        message.setMessage(message.getSender() + "님 입장!!");
//        template.convertAndSend("/sub/chat/room/" +message.getChatRoomNo(), message);
//    }
//
//    /**
//     * 해당 유저
//     */
//    @MessageMapping("/chat/sendMessage")
//    public void sendMessage(@Payload MessageDto message){
//        log.info("CHAT {}", message);
//        message.setMessage(message.getMessage());
//        template.convertAndSend("/sub/chat/room/" + message.getChatRoomNo(), message);
//    }
//
//    /**
//     * 유저 퇴장시 EventListener 을 통해서 유저 퇴장을 확인
//     */
//    @EventListener
//    public void webSocketDisconnectListener(SessionDisconnectEvent event){
//        log.info("DisConnEvent {}", event);
//
//        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
//
//        // stomp 세션에 있던 uuid 와 roomid 를 확인해서 채팅방 유저 리스트와 room에서 해당 유저를 삭제
//        String userUUID = (String)headerAccessor.getSessionAttributes().get("userUUID");
//        String roomId = (String)headerAccessor.getSessionAttributes().get("roomId");
//
//        log.info("headAccessor {}",headerAccessor);
//
//        // 채티방 유저 -1
//        chatService.minusUserCnt(roomId);
//
//        // 채팅방 유저 리스트에서 UUID 유저 닉네임 조회 및 리스트에서 유저 삭제
//        String userName = chatService.getUserName(roomId,userUUID);
//        chatService.delUser(roomId,userUUID);
//
//        if(userName != null){
//            log.info("User Disconnected : " + userName);
//
//            // builder 어노테이션 활용
//            MessageDto message = MessageDto.builder()
//                    .type(MessageDto.MessageType.LEAVE)
//                    .sender(userName)
//                    .message(userName + "님 퇴장!")
//                    .build();
//
//            template.convertAndSend("/sub/chat/room/" + roomId,message);
//        }
//
//    }
//
//    /**
//     * 채팅에 참여한 유저 리스트 반환
//     */
//    @GetMapping("/chat/userList")
//    public ArrayList<String> userList(String roomId) {
//        return chatService.getUserList(roomId);
//    }
//
//    /**
//     * 채팅에 참여한 유저 닉네임 중복 확인
//     */
//    @GetMapping("/chat/duplicateName")
//    @ResponseBody
//    public String isDuplicateName(@RequestParam("roomId") String roomId,
//                                  @RequestParam("userName") String userName
//    ){
//        String userName = chatService.isDuplicateName(roomId,userName);
//
//        return userName;
//    }
//
//}


package com.project.chat.controller;

import com.project.chat.dto.AdminChatRoom;
import com.project.chat.dto.ChatingRoom;
import com.project.chat.dto.MessageListDto;
import com.project.chat.dto.RoomCheckDto;
import com.project.chat.service.ChatService;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@SessionAttributes("loginUser")
@RequiredArgsConstructor
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/createChatRoom")
    @ResponseBody
    public ResponseEntity<Map<String, Object>> adminChatting(
            @ModelAttribute("loginUser") Member loginUser
    ) {
        // CHAT_ROOM 테이블에 회원 아이디 있으면 방을 생성하지 않음
        // 그 roomId를 가져와서 거기 방으로 들어가기
        // 채팅을 보냄과 동시에 디비에 저장.
        // 나가기 버튼을 누르면 소켓 통신 연결 끊기
        // 그후 다시 문의하면 db에서 roomId에 따른 채팅 내용을 불러온다.
        // 불러올때도 보낸이와 회원 아이디 비교해서 내가 보낸건지 상대방이 보낸건지 구분하기.

        Map<String, Object> chat = chatService.findRoom(loginUser.getMemberNo());
        System.out.println("방번호는 ?" + chat.get("room"));
        return ResponseEntity.ok().body(chat);
    }

    @RequestMapping("admin/chat")
    public ModelAndView adminChatPage() {
        ModelAndView modelAndView = new ModelAndView();

//        List<AdminChatRoom> chatRoomList = chatService.findAdminRoomList(); // 관리자는 모든 채팅룸 리스트 가져오기
        AdminChatRoom adminChatRoom1 = new AdminChatRoom(
                "Jang",
                "1",
                true,
                "마지막 메시지1",
                LocalDateTime.of(2023, 1, 31, 11, 50));
        AdminChatRoom adminChatRoom2 = new AdminChatRoom(
                "Jang2",
                "2",
                false,
                "마지막 메시지2",
                LocalDateTime.of(2023, 2, 1, 11, 50));
        modelAndView.addObject("chatRoomList", List.of(adminChatRoom1, adminChatRoom2));
//        modelAndView.addObject("chatRoomList", chatRoomList);
        modelAndView.setViewName("chat/chatRoom");
        return modelAndView;
    }

    /*
        - 플로우

        - 지금 1:1 문의를 눌렀을떄 구독이 시작되는 구조니까 사용자 측 채팅 알림은 따로 sse로 띄운다,,
        - 관리자 페이지 new 는 웹소켓으로 띄운다,,,

        - 관리자가 여러 채팅방 구독하기
            - 1:1 문의 버튼 눌렀을 때 -> List<ChatRoom>을 모두 조회 -> 조회된 ChatRoom들에 대해서 WebSocketSubscribe
            - 웹소켓 구독 했을 떄 Callback 메서드 웹소켓을 통해서 메세지를 수신 받았을 때 호출할 callback메서드를 만들면
            메세지가 도착을 하고 -> 방번호 룸넘버 멤버넘버 메세지 등등이 들어있고 룸넘버를 가지고 그 칸에 new (visiable 값을 변경)
            만약 내가 보고있는 채팅방이라면 이 채팅을 띄워줘야 하는것

        구독 -> jsp 페이지에서 (window onload 룸리스트에 대해서 들어온 룸넘버를 구독하기)

        - 채팅창 최초엔 비워져있고
        - 특정 사용자를 누르면 Ajax 로
           1. "RoomNo 에 대한 List<ChatMessage> 를 모두 불러와서 Model 에 넣고"
           2. "ChatContents.jsp 파일(View) 를 반환"
        - 비동기로 채팅창 넣기
     */

}
