package com.project.realestate.service;

import java.util.Map;

public interface RealEstateService {

    public int selectListCount(int currentPage);
    public int selectListCount(Map<String, Object> paramMap);

    public Map<String, Object> selectList(int currentPage);

    Map<String, Object> selectList(Map<String, Object> paramMap);

}
