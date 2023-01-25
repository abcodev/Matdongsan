package com.project.realestate.dto;

import com.project.common.template.PageInfoCombine;
import com.project.realestate.vo.RealEstateRent;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealEstateRentListResponse {
    private List<RealEstateRent> realEstateRentList;
    private PageInfoCombine pageInfoCombine;

    private List<RealEstateRent> realEstateSearch;

}
