package com.project.realestate.vo;

import com.project.client.seoulApi.dto.RealEstateRentDto;
import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RealEstateRent {

    private String estateNo;
    private String accYear;
    private String sggCd;
    private String sggNm;
    private String bjdCd;
    private String bjdName;
    private String boBn;
    private String buBn;
    private String floorNo;
    private String dealYmd;
    private String rentGbn;
    private String rentArea;
    private String rentGtn;
    private String rentFee;
    private String buildName;
    private String buildYear;
    private String houseType;

    private String address;
    private String subAddress;

    private String totalRentAvg;
    private String totalSellAvg;
    private String rentAvg;
    private String sellAvg;

    public static RealEstateRent of(RealEstateRentDto realEstateRentDto){
        return RealEstateRent.builder()
                .accYear(realEstateRentDto.getAccYear())
                .sggCd(realEstateRentDto.getSggCd())
                .sggNm(realEstateRentDto.getSggNm())
                .bjdCd(realEstateRentDto.getBjdCd())
                .bjdName(realEstateRentDto.getBjdName())
                .boBn(realEstateRentDto.getBoBn())
                .buBn(realEstateRentDto.getBuBn())
                .floorNo(realEstateRentDto.getFloorNo())
                .dealYmd(realEstateRentDto.getDealYmd())
                .rentGbn(realEstateRentDto.getRentGbn())
                .rentArea(realEstateRentDto.getRentArea())
                .rentGtn(realEstateRentDto.getRentGtn())
                .rentFee(realEstateRentDto.getRentFee())
                .buildName(realEstateRentDto.getBuildName())
                .buildYear(realEstateRentDto.getBuildYear())
                .houseType(realEstateRentDto.getHouseType()).build();
    }

}
