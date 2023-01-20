package com.project.restaurant.controller;

import com.google.gson.Gson;
import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.service.ReviewService;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.stream.Collectors;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {

    private final ReviewService reviewService;

    @RequestMapping(value = "/restaurant/insertReview", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public void insertReview(@ModelAttribute InsertReviewRequest req) {
        log.info("review insert : " + req.getResNo());
        log.info("review insert : " + req.getScore());
        log.info("review insert : " + req.getHashtags());
        log.info("review insert : " + req.getContents());
        log.info("review insert : " + req.getFiles().stream().map(MultipartFile::getOriginalFilename).collect(Collectors.toList()));

        Member sampleMember = Member.builder().memberNo(1).build();
        reviewService.create(sampleMember, req);
    }

//    @RequestMapping("selectReview")
//    @ResponseBody
//    public String selectReviewList(int resNo, Model model) {
//        ArrayList<Review> list = reviewService.selectReviewList(resNo);
//        Gson gson = new Gson();
//        String result = gson.toJson(list);
//        return result;
//    }
//    // 댓글 작성
//    @RequestMapping("insertReview")
//    @ResponseBody
//    public int insertReply(Review review, HttpSession session) {
//        String userNo = Integer.toString((int) ((Member)session.getAttribute("loginUser")).getMemberNo());
//        review.setMemberNo(review.getMemberNo());
//        int result = restaurantService.insertReview(review);
//        return result;
//    }


}
