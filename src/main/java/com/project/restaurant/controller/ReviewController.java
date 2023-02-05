package com.project.restaurant.controller;

import com.project.board.vo.Reply;
import com.project.member.vo.Member;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.dto.ReviewResponse;
import com.project.restaurant.service.ReviewService;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
@Log4j
public class ReviewController {

    private final ReviewService reviewService;

    // consumes : 클라이언트가 서버에게 보내는 데이터 타입을 명시
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
    public ResponseEntity<List<ReviewResponse>> selectReviewList(String resNo) {
        List<ReviewResponse> list = reviewService.selectReviewList(resNo);
        return ResponseEntity.ok(list);
    }

    @PostMapping("/restaurant/deleteReview")
    @ResponseBody
    public int deleteReview(Review review){
        int result = reviewService.deleteReview(review);
        return result;
    }

}
