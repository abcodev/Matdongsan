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
//    private String landGbn;
//    private String landGbnNm;
    private String bonbeon;
    private String bubeon;
    private String bldgNm;
    private String dealYmd;
    private String objAmt;
    private String bldgArea;
//    private String totArea;
//    private String floor;
//    private String rightGbn;
//    private String cntlYmd;
    private String buildYear;
    private String houseType;
//    private String reqGbn;
//    private String rdealerLawdnm;

    public static RealEstateSell of(RealEstateSellDto realEstateSellDto) {

        return RealEstateSell.builder()
                .accYear(realEstateSellDto.getAccYear())
                .sggCd(realEstateSellDto.getSggCd())
                .sggNm(realEstateSellDto.getSggNm())
                .bjdongCd(realEstateSellDto.getBjdongCd())
                .bjdongNm(realEstateSellDto.getBjdongNm())
//                .landGbn(realEstateSellDto.getLandGbn())
//                .landGbnNm(realEstateSellDto.getLandGbn())
                .bonbeon(realEstateSellDto.getBonbeon())
                .bubeon(realEstateSellDto.getBubeon())
                .bldgNm(realEstateSellDto.getBldgNm())
                .dealYmd(realEstateSellDto.getDealYmd())
                .objAmt(realEstateSellDto.getObjAmt())
                .bldgArea(realEstateSellDto.getBldgArea())
//                .totArea(realEstateSellDto.getTotArea())
//                .floor(realEstateSellDto.getFloor())
//                .rightGbn(realEstateSellDto.getRightGbn())
//                .cntlYmd(realEstateSellDto.getCntlYmd())
                .buildYear(realEstateSellDto.getBuildYear())
                .houseType(realEstateSellDto.getHouseType())
//                .reqGbn(realEstateSellDto.getReqGbn())
//                .rdealerLawdnm(realEstateSellDto.getRdealerLawdnm())
                .build();
    }
}
