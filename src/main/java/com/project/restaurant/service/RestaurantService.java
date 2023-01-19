package com.project.restaurant.service;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.vo.Restaurant;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface RestaurantService {

    public int selectResListCount();

    public RestaurantListResponse selectList(RestaurantListRequest request);

    List<String> selectStateList();

    Restaurant restaurantDetail(String resNo);

    List<String> selectHashtagList();

    void restaurantInsert(MultipartFile file, Restaurant restaurant);

    List<String> resHashtagByAdmin();

}
