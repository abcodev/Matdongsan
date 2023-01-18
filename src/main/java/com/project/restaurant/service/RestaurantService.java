package com.project.restaurant.service;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;

import java.util.List;

public interface RestaurantService {

//    public List<Restaurant> selectResList() throws Exception;

    public int selectResListCount();

    public RestaurantListResponse selectList(RestaurantListRequest request);

    List<String> selectStateList();
}
