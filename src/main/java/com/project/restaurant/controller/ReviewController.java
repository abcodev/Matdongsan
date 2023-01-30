package com.project.restaurant.controller;

import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.dto.ReviewResponse;
import com.project.restaurant.service.ReviewService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {

    private final ReviewService reviewService;

    @RequestMapping(value = "/restaurant/insertReview", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @ResponseBody
    public ResponseEntity<Void> insertReview(@ModelAttribute InsertReviewRequest req,
                                             HttpSession session) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        reviewService.create(loginUser, req);
        return ResponseEntity.ok().build();
    }

    @RequestMapping("/restaurant/selectReview")
    @ResponseBody
    public ResponseEntity<List<ReviewResponse>> selectReviewList(String resNo) {
        List<ReviewResponse> list = reviewService.selectReviewList(resNo);
        return ResponseEntity.ok(list);
    }

//    @RequestMapping("/restaurant/deleteReview")

}
