package com.project.admin.vo;

import lombok.Data;

@Data
public class Admin {

    private int reportNo;
    private int freeBno;
    private int memberNo;
    private String reportReason;
    private int reportUserNo;
    private String reportContent;
    private String providerId;
    private String reportStatus;
    private String email;
    private String status;
    private String memberName;
    private String reportedEmail;

    private int count;
}
