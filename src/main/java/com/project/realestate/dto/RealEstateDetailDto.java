package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateDetailDto {

    private String estateNo;
    private String accYear;
    private String address;
    private String bldgNm;
    private String objAmt;
    private String bldgArea;
    private String gbn;
    private String dealYmd;

}
