package com.project.chat.controller;

import com.project.chat.dto.MessageDto;
import com.project.chat.service.ChatService;
import lombok.RequiredArgsConstructor;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class StompController {

    private final ChatService chatService;
    private final SimpMessagingTemplate simpMessagingTemplate;

    @MessageMapping("/chat/send")
    public void sendMsg(MessageDto data){
        System.out.println("data"+data);
        chatService.sendMessage(data);

        simpMessagingTemplate.convertAndSend("/topic/"+data.getRoomNo(), data);
    }
}

/**
 *   1. 로그인
 *   2. 내가 참여하고있는 채팅방 "(일반 사용자면 0개 아니면 1개) - to 관리자, 관리자면 n개" 을 조회해서
 *      3-1. RoomNo List 로 내려오겠죠?
 *      4-1. SockJS 객체를 생성하면 -> StompClient 객체를 받아올 수 있는데,
 *      5-1. StompClient.subscribe() -> /topic/{roomNo} 를 구독 해주면 됩니다!
 *
 *      3-2. RoomNo 를 새롭게 만들어서 방을 매번 만듬
 *      4-2. SockJS 객체를 생성하면 -> StompClient 객체를 받아올 수 있는데,
 *      5-2. StompClient.subscribe() -> /topic/{roomNo} 를 구독 해주면 됩니다!
 */

/**
 *   WebSocket 체험판
 *   돌아가는 모습 보자!
 */