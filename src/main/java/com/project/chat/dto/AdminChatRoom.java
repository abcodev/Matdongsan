package com.project.chat.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class AdminChatRoom {

    private String roomNo;
    private String memberName;
    private String nickName;
    private String profileImage;
    private String latestMessage;
    private String latestMessageTime;
    private String read;
}
