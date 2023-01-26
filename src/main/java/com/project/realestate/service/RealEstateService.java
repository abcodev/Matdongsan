package com.project.realestate.service;

import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListFilter;
import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.vo.RealEstateRent;
import com.project.realestate.vo.RealEstateSell;

import java.util.List;
import java.util.Map;

public interface RealEstateService {

    public int selectListCount();

    public RealEstateRentListResponse selectAllList(RealEstateRentListRequest req);

    // 자치구 리스트,
   public List<RealEstateRent> searchLocalList();

   // 동 리스트
   public List<RealEstateRent> searchDongList(String state);


    public List<RealEstateMainListDto> getSellList();

}
