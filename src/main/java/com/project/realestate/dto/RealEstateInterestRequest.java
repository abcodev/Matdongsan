package com.project.realestate.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateInterestRequest {

    private String estateNo;
    private Boolean isInterest;

}
