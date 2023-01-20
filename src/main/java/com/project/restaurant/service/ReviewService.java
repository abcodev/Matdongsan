package com.project.restaurant.service;

import com.project.member.vo.Member;
import com.project.restaurant.dao.ReviewDao;
import com.project.restaurant.dto.InsertReviewRequest;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ReviewService {

    private final ReviewDao reviewDao;

    public void create(Member member, InsertReviewRequest req) {
        Review review = Review.of(member, req);
        reviewDao.insertReview(review);
        // TODO : HashTag 등록
        // TODO : Image 저장
    }

}
