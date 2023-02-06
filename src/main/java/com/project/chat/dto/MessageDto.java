package com.project.chat.dto;


import lombok.AllArgsConstructor;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MessageDto {
    // 메세지 타입 : 입장 , 채팅
//    public enum MessageType{
//        ENTER, TALK , LEAVE
//    }
//
//    private MessageType type;
//    private String chatRoomNo;
//    private String sender;
//    private String message;
//    private String time;

    private long memberNo;  // memberNo : 1
    private String message;
    private String roomNo;

}
