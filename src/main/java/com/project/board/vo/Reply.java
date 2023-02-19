package com.project.board.vo;

import lombok.Data;

import java.sql.Date;
import java.sql.Timestamp;

@Data
public class Reply {
    private int replyNo;
    private long memberNo;
    private String profileImage;
    private String nickName;
    private int freeBno;
    private String replyContent;
    private Date replyDate;
    private String status;
}
