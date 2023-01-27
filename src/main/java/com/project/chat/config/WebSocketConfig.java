package com.project.chat.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;


@Configuration
@EnableWebSocketMessageBroker
public class WebSocketConfig implements WebSocketMessageBrokerConfigurer {
    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        registry.addEndpoint("/mainPage") // 연결될 엔드 포인트
//                -> 연결할 소켓 엔드포인트를 지정하는 코드입니다. room1 이라는 endpoint 에 interceptor 를 추가해 소켓을 등록합니다.
                .setAllowedOrigins("http://localhost:8070/Matdongsan")
                .withSockJS(); // SocketJS 를 연결한다는 설정
    }


    @Override
    public void configureMessageBroker(MessageBrokerRegistry registry) {
         // 메세지 받을때
        registry.enableSimpleBroker("/topic","/queue");
        
        // 메세지 보낼때
        registry.setApplicationDestinationPrefixes("/app");
    }




}
