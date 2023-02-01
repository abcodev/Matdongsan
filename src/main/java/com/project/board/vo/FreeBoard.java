package com.project.board.vo;

import lombok.Data;

import java.sql.Date;
import java.sql.Timestamp;

@Data
public class FreeBoard {
    private int boardNo;
    private long memberNo;
    private String boardTitle;
    private String profileImage;
    private String boardWriter;
    private String boardContent;
    private Timestamp boardDate;
    private String boardArea;
    private String status;



    private int currentPage;
}
