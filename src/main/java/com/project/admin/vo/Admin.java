package com.project.admin.vo;

import lombok.Data;

import java.sql.Timestamp;

/**
 *  객체를 용도에 맞게 써야하는데.. 그냥 생긴거 비슷한걸 쓰는느낌..?
 */

@Data
public class Admin {  // Entity x -> Admin 객체는..?

    private int reportNo;
    private int fNo;
    private int memberNo;
    private int reportUserNo;
    private String reportContent;
    private String provider;
    private String providerId;
    private String reportStatus;
    private String email;
    private String status;
    private String memberName;
    private String reportEmail;
    private String boardWriter;
    private String reportType;
    private String nickName;
    private Timestamp reportDate;
    private String qStatus;
    private String fStatus;





}
