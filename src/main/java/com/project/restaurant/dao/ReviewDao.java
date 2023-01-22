package com.project.restaurant.dao;

import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class ReviewDao {

    private final SqlSessionTemplate sqlSession;

    public int insertReview(Review review) {
        sqlSession.insert("resMapper.insertReview", review);
        return review.getRevNo();
    }

    public List<Review> selectReviewList(String resNo) {
        return sqlSession.selectList("resMapper.selectReview", resNo);
    }
}
