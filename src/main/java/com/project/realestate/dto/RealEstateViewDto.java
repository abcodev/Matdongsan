package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateViewDto {

    private String estateNo;
    private String bldgNm;

    public static RealEstateViewDto of(RealEstateDetailDto detail) {
        return new RealEstateViewDto(detail.getEstateNo(), detail.getBldgNm());
    }
}
