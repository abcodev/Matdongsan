package com.project.board.freeBoard.vo;

import lombok.Data;

import java.util.Date;

@Data
public class FreeBoard {
    private int boardNo;
    private int memberNo;
    private String boardTitle;
    private String boardWriter;
    private String boardContent;
    private Date boardDate;
    private String boardArea;
    private String status;
}
