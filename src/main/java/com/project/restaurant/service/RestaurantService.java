package com.project.restaurant.service;

import com.project.restaurant.dto.RestaurantListRequest;
import com.project.restaurant.dto.RestaurantListResponse;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.ResHashtag;
import com.project.restaurant.vo.Restaurant;
import com.project.restaurant.vo.Review;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

public interface RestaurantService {

    public int selectResListCount();

    public RestaurantListResponse selectList(RestaurantListRequest request);

    List<String> selectStateList();

    Restaurant restaurantDetail(String resNo);

    List<Hashtag> selectHashtagList();

    void restaurantInsert(MultipartFile file, Restaurant restaurant, HttpSession session,List<String> hashTagId);

    List<String> resHashtagByAdmin(String resNo);

//    public ArrayList<Review> selectReviewList(int resNo);
//
//    int insertReview(Review review);










}
