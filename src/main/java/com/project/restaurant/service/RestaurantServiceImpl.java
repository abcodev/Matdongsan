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
import java.util.Objects;

@Service
public class RestaurantServiceImpl implements RestaurantService {

    private static final int DEFAULT_RES_SIZE = 12;
    private final RestaurantDao restaurantDao;
    private final RestaurantCrawlingService restaurantCrawlingService;

    @Autowired
    public RestaurantServiceImpl(RestaurantDao restaurantDao, RestaurantCrawlingService restaurantCrawlingService) {
        this.restaurantDao = restaurantDao;
        this.restaurantCrawlingService = restaurantCrawlingService;
    }

    @Override
    public int selectResListCount() {
        return 0;
    }

    @Override
    public RestaurantListResponse selectList(RestaurantListRequest request) {
        RestaurantListFilter filter = RestaurantListFilter.from(request);
        int count = restaurantDao.selectResListCount(filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Restaurant> result = restaurantDao.selectResList(pageInfoCombine, filter);
        result.forEach(this::updateImageIfEmpty);
        return new RestaurantListResponse(result, pageInfoCombine);
    }

    private void updateImageIfEmpty(Restaurant restaurant) {
        if (Objects.isNull(restaurant.getResImgUrl()) || restaurant.getResImgUrl().isEmpty()) {
            String imageUrl = restaurantCrawlingService.findImage(restaurant.getResName());
            restaurantDao.updateImage(restaurant.getResNo(), imageUrl);
            restaurant.setImageUrl(imageUrl);
        }
    }

    @Override
    public List<String> selectStateList() {
        return restaurantDao.selectStateList();
    }

    @Override
    public List<String> selectHashtagList() {
        return restaurantDao.selectHashtagList();
    }


    @Override
    public Restaurant restaurantDetail(String resNo) {
        return restaurantDao.restaurantDetail(resNo);
    }


    @Override
    public List<String> resHashtagByAdmin() {
        return restaurantDao.resHashtagByAdmin();
    }




}
