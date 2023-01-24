package com.project.restaurant.controller;

import com.google.gson.Gson;
import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.dto.ReviewAndMemberDto;
import com.project.restaurant.service.ReviewService;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {

    private final ReviewService reviewService;

    @RequestMapping(value = "/restaurant/insertReview", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public void insertReview(
            @ModelAttribute InsertReviewRequest req,
            HttpSession session
    ) {
        Member loginUser = (Member) session.getAttribute("loginUser");
        Member reviewMember = Member.builder().memberNo(loginUser.getMemberNo()).build();
        reviewService.create(reviewMember, req);
    }

    @RequestMapping("/restaurant/selectReview")
    @ResponseBody
    public ResponseEntity<List<ReviewAndMemberDto>> selectReviewList(String resNo) {
        List<ReviewAndMemberDto> list = reviewService.selectReviewList(resNo);
        return ResponseEntity.ok(list);
    }



}
