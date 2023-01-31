package com.project.chat.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminChatRoom {
    /**
     *  chatRoomList [
     *   {
     *     "memberName": String,
     *     "roomNo": String(UUID),
     *     "new": Boolean,
     *     "latestMessage": String,
     *     "latestMessageTime": LocalDateTime
     *   },
     *   ...
     *  ]
     */
    private String nickname;
    private String roomNo;
    private Boolean isNew;
    private String latestMessage;
    private LocalDateTime latestMessageTime;
}
