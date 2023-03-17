package com.project.restaurant.controller;

import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.dto.RestaurantReviewResponse;
import com.project.restaurant.dto.ReviewResponse;
import com.project.restaurant.service.RestaurantService;
import com.project.restaurant.service.ReviewService;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {

    private final ReviewService reviewService;
    private final RestaurantService restaurantService;

    @RequestMapping(value = "/restaurant/insertReview", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @ResponseBody
    public ResponseEntity<Void> insertReview(@ModelAttribute InsertReviewRequest req,
                                             HttpSession session
    ) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        reviewService.create(loginUser, req);
        return ResponseEntity.ok().build();
    }

    @RequestMapping("/restaurant/selectReview")
    @ResponseBody
    public ResponseEntity<RestaurantReviewResponse> selectReviewList(String resNo) {
        List<ReviewResponse> reviewList = reviewService.selectReviewList(resNo);
        List<String> hashtagList = reviewService.selectReviewHashtagTop2(resNo);
        return ResponseEntity.ok(new RestaurantReviewResponse(reviewList, hashtagList));
    }

    @DeleteMapping("/restaurant/review/{reviewNo}")
    @ResponseBody
    public ResponseEntity<Void> deleteReview(ModelAndView modelAndView, @PathVariable int reviewNo){
        reviewService.deleteReview(reviewNo);
//        restaurantService.deleteReviewImg(reviewNo);
        return ResponseEntity.ok().build();
    }

}
