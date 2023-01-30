package com.project.chat.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class StompController {

    private final SimpMessagingTemplate simpMessagingTemplate;

    @MessageMapping("/chat/271ee544-6a30-425f-9e8e-dcee975627a0")
    public void sendMsg(@Payload Map<String,Object> data){
//        simpMessagingTemplate.convertAndSend("/topic/271ee544-6a30-425f-9e8e-dcee975627a0",data);
        simpMessagingTemplate.convertAndSend("/topic/271ee544-6a30-425f-9e8e-dcee975627a0",data);
    }
}
