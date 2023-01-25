package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
@AllArgsConstructor
public class RealEstateRentListRequest {
    private int currentPage;
//    private Map<String, Object> param;
    private String state;
    private String dong;
    private String rentType;
    private String fee;
    private String area;
}
