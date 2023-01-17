package com.project.chat.dto;
import lombok.Data;
import java.util.UUID;

@Data
public class ChatRoom {
    private String chatRoomNo;

    public ChatRoom create(){
        ChatRoom chatRoom = new ChatRoom();
        chatRoom.chatRoomNo = UUID.randomUUID().toString();

        return chatRoom;
    }
}
