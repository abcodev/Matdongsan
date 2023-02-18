package com.project.realestate.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

// Entity 는 테이블이랑 똑같아
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class RealEstateAgent {

    private String agentNo;
    private String state;
    private String bjdongNm;
    private String address;
    private String refName;
    private String agentName;
    private String agentPhone;
    private long memberNo;
    private String applyStatus;
    private String attachment;

}
