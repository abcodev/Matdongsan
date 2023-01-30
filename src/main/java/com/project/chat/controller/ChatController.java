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

import com.project.chat.dto.ChatingRoom;
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

import java.util.UUID;

@Controller
@SessionAttributes("loginUser")
@RequiredArgsConstructor
public class ChatController {


    private final ChatService chatService;


    @PostMapping("/createChatRoom")
    public ResponseEntity<?> adminChatting(
            @ModelAttribute("loginUser") Member loginUser
    ){
        // CHAT_ROOM 테이블에 회원 아이디 있으면 방을 생성하지 않음
        // 그 roomId를 가져와서 거기 방으로 들어가기
        // 채팅을 보냄과 동시에 디비에 저장.
        // 나가기 버튼을 누르면 소켓 통신 연결 끊기
        // 그후 다시 문의하면 db에서 roomId에 따른 채팅 내용을 불러온다.
        // 불러올때도 보낸이와 회원 아이디 비교해서 내가 보낸건지 상대방이 보낸건지 구분하기.

        ChatingRoom find = chatService.findRoom(loginUser.getMemberNo());
        if(ObjectUtils.isEmpty(find)) {
            ChatingRoom room = ChatingRoom.create(loginUser.getMemberNo());
            chatService.createRoom(room);
            chatService.enterChatRoom(room,loginUser.getMemberNo());
            return ResponseEntity.ok(room);
        }else{
            System.out.println("확인"+find.getRoomNo());
            return ResponseEntity.ok(find);
        }
    }
}