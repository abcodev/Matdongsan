package com.project.board.vo;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.vo.Alarm;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

@Data
public class QnaBoard {
    private int qnaBno;
    private long memberNo;
    private int parentBno;
    private String qnaTitle;
    private String qnaContent;
    private Timestamp qnaDate;
    private int count;
    private String status;
    private String qnaArea;
    private String qnaWriter;
    private int depth;
    private int notice;
    private String blind;


}
