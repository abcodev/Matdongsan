package com.project.board.dto;

import java.sql.Timestamp;
import java.util.List;

public class QnaBoardTest {

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
    private List<QnaBoardTest> childList;
    // 자식이 없는 애는 -> emptyList

}
