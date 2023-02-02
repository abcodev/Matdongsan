package com.project.chat.dto;


import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class ChatRoomJoin {
    private String chatRoomNo;
    private long memberNo;


    public static ChatRoomJoin join(String roomNo,long memberNo){
        return ChatRoomJoin.builder().
                chatRoomNo(roomNo).
                memberNo(memberNo).
                build();
    }

}
