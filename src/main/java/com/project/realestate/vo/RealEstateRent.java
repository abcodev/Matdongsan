package com.project.realestate.vo;

import com.project.client.seoulApi.dto.RealEstateRentDto;
import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RealEstateRent {

    private String accYear;
    private String sggCd; //자치구 코드
    private String sggNm;
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

    public static RealEstateRent of(RealEstateRentDto realEstateRentDto){
        return RealEstateRent.builder()
                .accYear(realEstateRentDto.getAccYear())
                .sggCd(realEstateRentDto.getSggCd())
                .sggNm(realEstateRentDto.getSggNm())
                .bjdCd(realEstateRentDto.getBjdCd())
                .bjdName(realEstateRentDto.getBjdName())
                .boBn(realEstateRentDto.getBoBn())
                .buBn(realEstateRentDto.getBuBn())
                .dealYmd(realEstateRentDto.getDealYmd())
                .rentGbn(realEstateRentDto.getRentGbn())
                .rentArea(realEstateRentDto.getRentArea())
                .rentGtn(realEstateRentDto.getRentGtn())
                .rentFee(realEstateRentDto.getRentFee())
                .buildName(realEstateRentDto.getBuildName())
                .houseType(realEstateRentDto.getHouseType()).build();
    }

}
