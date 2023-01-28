package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class RealEstateRentListRequest {
    private int currentPage;
    private String state;
    private String dong;
    private String rentType;
    private String rentGtn;
    private String chooseType;
}
