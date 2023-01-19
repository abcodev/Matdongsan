package com.project.realestate.service;

import com.project.realestate.vo.RealEstateRent;

import java.util.List;
import java.util.Map;

public interface RealEstateService {

    public int selectListCount();
    public int selectListCount(Map<String, Object> paramMap);

    public Map<String, Object> selectList(int currentPage);

    Map<String, Object> selectList(Map<String, Object> paramMap);

   public List<RealEstateRent> searchLocalList();

   public List<String> selectOption(String search_option);

}
