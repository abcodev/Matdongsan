package com.project.member.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.sql.Date;

@Getter
@AllArgsConstructor
@NoArgsConstructor
public class AllBoard {
    private int boardNo;
    private String boardTitle;
    private Date boardDate;
    private int qnaNo;
    private String qnaTitle;
    private Date qnaDate;

    private String boardType;
}
