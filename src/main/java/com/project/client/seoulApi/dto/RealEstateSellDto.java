package com.project.client.seoulApi.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class RealEstateSellDto {

    @JsonProperty("ACC_YEAR")
    private String accYear;
    @JsonProperty("SGG_CD")
    private String sggCd;
    @JsonProperty("SGG_NM")
    private String sggNm;
    @JsonProperty("BJDONG_CD")
    private String bjdongCd;
    @JsonProperty("BJDONG_NM")
    private String bjdongNm;
    @JsonProperty("LAND_GBN")
    private String landGbn;
    @JsonProperty("LAND_GBN_NM")
    private String landGbnNm;
    @JsonProperty("BONBEON")
    private String bonbeon;
    @JsonProperty("BUBEON")
    private String bubeon;
    @JsonProperty("BLDG_NM")
    private String bldgNm;
    @JsonProperty("DEAL_YMD")
    private String dealYmd;
    @JsonProperty("OBJ_AMT")
    private String objAmt;
    @JsonProperty("BLDG_AREA")
    private String bldgArea;
    @JsonProperty("TOT_AREA")
    private String totArea;
    @JsonProperty("FLOOR")
    private String floor;
    @JsonProperty("RIGHT_GBN")
    private String rightGbn;
    @JsonProperty("CNTL_YMD")
    private String cntlYmd;
    @JsonProperty("BUILD_YEAR")
    private String buildYear;
    @JsonProperty("HOUSE_TYPE")
    private String houseType;
    @JsonProperty("REQ_GBN")
    private String reqGbn;
    @JsonProperty("RDEALER_LAWDNM")
    private String rdealerLawdnm;


}
