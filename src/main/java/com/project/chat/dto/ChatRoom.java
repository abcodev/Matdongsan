package com.project.chat.dto;
import lombok.Data;
import java.util.UUID;

@Data
public class ChatRoom {
    private String chatRoomNo;
    private String memberNo;


//    public ChatRoom create(){
//        ChatRoom chatRoom = new ChatRoom();
//        chatRoom.chatRoomNo = UUID.randomUUID().toString();
//
//        return chatRoom;
//    }
}
