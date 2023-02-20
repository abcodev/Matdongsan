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
        chatService.sendMessage(data);
        simpMessagingTemplate.convertAndSend("/topic/"+data.getRoomNo(), data);
    }
}
