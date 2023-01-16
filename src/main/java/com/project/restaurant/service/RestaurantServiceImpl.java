package com.project.restaurant.service;

import com.project.restaurant.dao.RestaurantDao;
import com.project.restaurant.vo.Restaurant;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    private final RestaurantDao restaurantDao;

    @Override
    public List<Restaurant> selectResList() throws Exception {
        return restaurantDao.selectResList();
    }
}
