package com.project.board.vo;

import lombok.Data;

import java.sql.Date;
import java.sql.Timestamp;

@Data
public class Reply {
    private int replyNo;
    private long memberNo;
    private int freeBno;
    private String replyContent;
    private Timestamp replyDate;
    private String status;
}
