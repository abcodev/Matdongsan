package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateRentListFilter {

    private String state;
    private String dong;
    private String rentType;
    private String rentGtn;
    private String chooseType;

    public static RealEstateRentListFilter from(RealEstateRentListRequest req){
        return new RealEstateRentListFilter(req.getState(), req.getDong(), req.getRentType(), req.getRentGtn(), req.getChooseType());
    }

}