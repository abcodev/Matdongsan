package com.project.board.vo;

import lombok.Data;

import java.sql.Date;

@Data
public class Reply {
    private String replyNo;
    private String memberNo;
    private String freeBno;
    private String replyContent;
    private String refBno;
    private Date replyDate;
    private String status;
}
