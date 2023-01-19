package com.project.chat.dto;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MessageDto {
    // 메세지 타입 : 입장 , 채팅
    public enum MessageType{
        ENTER, TALK , LEAVE
    }

    private MessageType type;
    private String chatRoomNo;
    private String sender;
    private String message;
    private String time;
}
