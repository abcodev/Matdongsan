package com.project.board.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardListArray {

    private int boardNo;
    private long memberNo;
    private String boardTitle;
    private String profileImage;
    private String boardWriter;
    private String boardContent;
    private Timestamp boardDate;
    private String boardArea;
    private String status;

}
