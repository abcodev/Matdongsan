package com.project.restaurant.dao;

import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class ReviewDao {

    private final SqlSessionTemplate sqlSession;

    public int insertReview(Review review) {
        return sqlSession.insert("resMapper.insertReview", review);
    }

}
