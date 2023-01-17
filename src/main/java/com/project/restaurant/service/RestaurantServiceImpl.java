package com.project.restaurant.service;

import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.vo.Restaurant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    private final RestaurantDao restaurantDao;

    @Autowired
    public RestaurantServiceImpl(RestaurantDao restaurantDao) {
        this.restaurantDao = restaurantDao;
    }

    @Override
    public List<Restaurant> selectResList() throws Exception {
        return restaurantDao.selectResList();
    }
}
