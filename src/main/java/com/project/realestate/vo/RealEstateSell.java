package com.project.realestate.vo;

import com.project.client.seoulApi.dto.RealEstateSellDto;
import com.project.realestate.dto.RealEstateDetailDto;
import lombok.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RealEstateSell {

    private String estateNo;
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
    private String floor;
    private String gbn;

    private String address;
    private String subAddress;

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
                .floor(realEstateSellDto.getFloor())
                .build();
    }

}
