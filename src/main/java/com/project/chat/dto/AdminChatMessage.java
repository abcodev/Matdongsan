package com.project.chat.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminChatMessage {

    private String roomNo;
    private String memberNo;
    private String memberName;
    private String nickName;
    private String message;
    private Date createDate;
    private String read;

}
