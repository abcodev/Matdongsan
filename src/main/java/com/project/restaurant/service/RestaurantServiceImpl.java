package com.project.restaurant.service;

import com.project.common.template.PageInfoCombine;
import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.vo.Restaurant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    private static final int DEFAULT_RES_SIZE = 12;

    private final RestaurantDao restaurantDao;

    @Autowired
    public RestaurantServiceImpl(RestaurantDao restaurantDao) {
        this.restaurantDao = restaurantDao;
    }

//    @Override
//    public List<Restaurant> selectResList() throws Exception {
//        return restaurantDao.selectResList();
//    }

    @Override
    public int selectResListCount() {
        return restaurantDao.selectResListCount();
    }



    @Override
    public RestaurantListResponse selectList(RestaurantListRequest request) {

        int count = restaurantDao.selectResListCount();
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Restaurant> result = restaurantDao.selectResList(pageInfoCombine, RestaurantListFilter.from(request));
        return new RestaurantListResponse(result, pageInfoCombine);
    }





}
