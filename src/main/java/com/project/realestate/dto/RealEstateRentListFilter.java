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
    private String transaction;
    private int price;
    private int area;

    public RealEstateRentListFilter(Map<String, Object> param) {
    }

    public static RealEstateRentListFilter from (RealEstateRentListRequest req){
        return new RealEstateRentListFilter(req.getParam());
    }

}
