package com.project.board.vo;

import lombok.Data;

@Data
public class Report {
    private int reportNo; // 신고번호
    private int reportFno; // 신고 게시글 번호
    private int reportQno;
    private int reportedPerson; // 피신고자 -> MemberNo
    private int reporter; // 신고자
    private String reportContent; // 신고 사유
    private String reportType;
    private int fNo;
    private String qStatus;
    private String fStatus;
    private String email;
    private String reportEmail;




}
