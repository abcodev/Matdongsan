package com.project.realestate.vo;

import com.project.client.seoulApi.dto.RealEstateSellDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RealEstateSell {

    private String accYear;
    private String sggCd;
    private String sggNm;
    private String bjdongCd;
    private String bjdongNm;
    private String bonbeon;
    private String bubeon;
    private String bldgNm;
    private String dealYmd;
    private String objAmt;
    private String bldgArea;
    private String buildYear;
    private String houseType;


    public static RealEstateSell of(RealEstateSellDto realEstateSellDto) {

        return RealEstateSell.builder()
                .accYear(realEstateSellDto.getAccYear())
                .sggCd(realEstateSellDto.getSggCd())
                .sggNm(realEstateSellDto.getSggNm())
                .bjdongCd(realEstateSellDto.getBjdongCd())
                .bjdongNm(realEstateSellDto.getBjdongNm())
                .bonbeon(realEstateSellDto.getBonbeon())
                .bubeon(realEstateSellDto.getBubeon())
                .bldgNm(realEstateSellDto.getBldgNm())
                .dealYmd(realEstateSellDto.getDealYmd())
                .objAmt(realEstateSellDto.getObjAmt())
                .bldgArea(realEstateSellDto.getBldgArea())
                .buildYear(realEstateSellDto.getBuildYear())
                .houseType(realEstateSellDto.getHouseType())
                .build();
    }
}
