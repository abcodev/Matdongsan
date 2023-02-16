package com.project.chat.controller;

import com.project.chat.dto.AdminChatMessage;
import com.project.chat.dto.AdminChatRoom;

import com.project.chat.dto.MessageDto;
import com.project.chat.service.ChatService;
import com.project.common.annotation.RequiredLogin;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@SessionAttributes("loginUser")
@RequiredArgsConstructor
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/createChatRoom")
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

    @GetMapping("/chat/admin/enterChat")
    @ResponseBody
    public ModelAndView enterChat(@ModelAttribute("roomNo") String roomNo , ModelAndView mv) {
        List<AdminChatMessage> chattingMessageList = chatService.adminMessageList(roomNo);
        mv.addObject("chattingMessageList",chattingMessageList);
        mv.setViewName("chat/adminChatContents");
        return mv;
    }



//    @PostMapping("/chat/admin/enterChat")
//    public ModelAndView enterChat(@ModelAttribute("roomNo") String roomNo) {
//        ModelAndView modelAndView = new ModelAndView();
//        List<AdminChatMessage> chatMessageList = chatService.adminMessageList(roomNo);
//
//        modelAndView.addObject("chatMessageList", chatMessageList);
//        modelAndView.setViewName("chat/adminChatContents");
//        return modelAndView;
//    }


    /**
     * 관리자 1:1문의 들어가기 -> 채팅 리스트 보여주기
     * - 미리보기
     */
    @RequestMapping("/chat/admin")
    public ModelAndView adminChatting(ModelAndView modelAndView
    ) {
        // 채팅 목록 가져오기
        List<AdminChatRoom> chattingList = chatService.adminChattingList();
        modelAndView.addObject("chattingList", chattingList);
        modelAndView.setViewName("chat/chatRoom");
        return modelAndView;
    }

    @RequestMapping("/updateMessage")
    @ResponseBody
    public void updateMessageRead(@ModelAttribute("content") MessageDto messageDto) {
        System.out.println("test" + messageDto.getMessage());
        chatService.updateMessageRead(messageDto);
    }



    /*
        우리 1:1 채팅 메인에서만 띄우는게 맞지?

        >> 관리자가 채팅방에 참여하려면 -> 관리자는 채팅에 참여자 개념이 아니고 채팅 리시버 개념

            보내는 사람은 무조건 디비에 메세지를 넣고 웹소켓으로 메세지를 보낸다
            받는 사람은 구독이 안됐더라도 일방적으로 보내고 (받는 사람은 그 화면에 없으면 연결 하지도 않았으니까)
            관리자가 그 화면에 있는 메세지를 받아보면 받아보는 시점에서 구독

        테이블
        CHAT_ROOM(CHAT_ROOM_NO, MEMBER_NO, STATUS, CREATE_DATE)
        CHAT_MESSAGE(CHAT_ROOM_NO, TYPE[QUESTION, ANSWER], SENDER, MS_CONTENTS)

        1. CHAT_ROOM_JOIN 테이블은 필요 없지 않을것 같음(우린 리시버가 관리자로 정해져있으니까)
        2. CHAT_MESSAGE 테이블 구조 변경 - TYPE 은 MessageType(QUESTION, ANSWER) 이라는 이름의 Enum Class 를 만들어서 사용
            (샌드메세지가 question 일때 받는사람이 관리자 answer 면 채팅 방 주인(사용자) )
        3. MessageDto 구조 변경 -> 메세지 보내는 부분을 바꿔주기(jsp send 함수부분)

        + 관리자를 찾아내는 쿼리 (SELECT * FROM MEMBER WHERE MEMBERGRADE = "ADMIN" or 관리자 회원 번호 1로?


        >> 웹소켓 시점 - jsp - 관리자가 구독하는 시점 : jsp 페이지에서 전체 채팅 목록이 보이고 방에 들어갔을 때 구독하게됨
                     구독 -> jsp 페이지에서 (window onload 룸리스트에 대해서 들어온 룸넘버를 구독하기)
        - 관리자가 여러 채팅방 구독하기
            - 1:1 문의 버튼 눌렀을 때 -> List<ChatRoom>을 모두 조회 -> 조회된 ChatRoom 들에 대해서 WebSocket 구독
            - 웹소켓 구독 했을 때 Callback 메서드가 있어야 할거고 (웹소켓을 통해서 메세지를 수신 받았을 때 호출할)
              callback 메서드에서 메세지가 도착을 하고나면 룸넘버 멤버넘버 메세지 등등이 들어있고,, 룸넘버를 가지고 그 칸에 new를 띄우기 (visible 값을 변경)

        - 특정 채팅방을 누르면 Ajax 로
                    1. RoomNo 에 대한 List<ChatMessage> 를 모두 불러와서 Model 에 넣고
                    2. ChatContents.jsp 파일(View) 를 반환

        >> 알림
        - 지금 1:1 문의를 눌렀을떄 구독이 시작되는 구조니까 사용자 측 채팅 알림은 따로 sse 로 띄운다
        - 관리자 페이지 new 는 웹소켓으로 띄운다,,, (visible 값 변경)

     */

}