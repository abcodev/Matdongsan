package com.project.common.vo;

import lombok.Builder;
import lombok.Data;
import com.project.common.dto.RentHouseDto;

@Data
public class RentHouse {

    private String rentNo;
    private String accYear;
    private String sggCd; //자치구 코드
    private String sggName;
    private String bjdCd;
    private String bjdName;
    private String boBn; //본번
    private String buBn; //부번
    private String dealYmd;
    private String rentGbn;
    private String rentArea;
    private String rentGtn;
    private String rentFee;
    private String buildName;
    private String houseType;

}
