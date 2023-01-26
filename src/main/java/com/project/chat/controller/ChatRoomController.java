//package com.project.chat.controller;
//
//
//import com.project.chat.dto.ChatingRoom;
//import com.project.chat.service.ChatService;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.mvc.support.RedirectAttributes;
//
//@Controller
//@Slf4j
//public class ChatRoomController {
//
//    @Autowired
//    private ChatService chatService;
//
//    /**
//     * 채팅 페이지로 이동
//     */
//    @GetMapping("/")
//    public String goChatRoom(Model model){
//        log.info("SHOW ALL ChatList {}", chatService.findAllRoom());
//        return "roomList";
//    }
//
//    /**
//     * 채팅방 생성
//     * 채팅방 생성 후 다시 / 로 return
//     */
//    @PostMapping("/chat/createRoom")
//    public String createRoom(@RequestParam String roomId, RedirectAttributes rttr){
//        ChatingRoom room = chatService.createChatRoom(roomId);
//        log.info("CREATE Chat Room {}", roomId);
//        rttr.addFlashAttribute("roomName",room);
//        return "redirect:/";
//    }
//
//    /**
//     * 채팅방 입장 화면
//     * 파라미터로 넘어오는 roomId를 확인한 후 해당 roomId 를 기준으로
//     * 채팅방을 찾아서 클라이언트 chatRoom으로 보낸다
//     */
//    @GetMapping("/chat/room")
//    public String roomDetail(Model model, String roomId){
//        log.info("roomId {}", roomId);
//        model.addAttribute("room",chatService.findRoomById(roomId));
//        return "chatRoom";
//    }
//
//
//
//}
