package com.project.chat.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class MessageListDto {

    private long cmNo;
    private String roomNo;
    private String sendNo;
    private Date createDate;
    private String read;
    private String content;
}
