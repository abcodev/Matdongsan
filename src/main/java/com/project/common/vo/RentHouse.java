package com.project.common.vo;

import com.project.common.dto.RentHouseDto;
import lombok.*;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class RentHouse {

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

    public static RentHouse of(RentHouseDto rentHouseDto){
        return RentHouse.builder()
                .accYear(rentHouseDto.getAccYear())
                .sggCd(rentHouseDto.getSggCd())
                .sggName(rentHouseDto.getSggName())
                .bjdCd(rentHouseDto.getBjdCd())
                .bjdName(rentHouseDto.getBjdName())
                .boBn(rentHouseDto.getBoBn())
                .buBn(rentHouseDto.getBuBn())
                .dealYmd(rentHouseDto.getDealYmd())
                .rentGbn(rentHouseDto.getRentGbn())
                .rentArea(rentHouseDto.getRentArea())
                .rentGtn(rentHouseDto.getRentGtn())
                .rentFee(rentHouseDto.getRentFee())
                .buildName(rentHouseDto.getBuildName())
                .houseType(rentHouseDto.getHouseType()).build();
    }

}
