package com.project.board.qnaBoard.vo;

import lombok.Data;

import java.util.Date;

@Data
public class QnaBoard {
    private int qnaBno;
    private long memberNo;
    private int parentBno;
    private String qnaTitle;
    private String qnaContent;
    private Date qnaDate;
    private int count;
    private String status;
    private String qnaArea;
    private String boardCd;
    private String qnaWriter;

}
