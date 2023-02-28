package com.project.restaurant.repository;

import com.project.restaurant.dto.ReviewResponse;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ReviewRepository {

    private final SqlSessionTemplate sqlSession;

    public int insertReview(Review review) {
        sqlSession.insert("resMapper.insertReview", review);
        return review.getRevNo();
    }

    public List<ReviewResponse> selectReviewList(String resNo) {
        return sqlSession.selectList("resMapper.selectReviewList", resNo);
    }

    public int deleteReview(int reviewNo) {
        return sqlSession.update("resMapper.deleteReview", reviewNo);
    }
}
