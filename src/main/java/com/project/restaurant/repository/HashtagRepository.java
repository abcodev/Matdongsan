package com.project.restaurant.repository;

import com.project.restaurant.vo.Hashtag;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class HashtagRepository {

    private final SqlSessionTemplate sqlSession;

    public Hashtag select(String hashtag) {
        return sqlSession.selectOne("hashtagMapper.select", hashtag);
    }
}
