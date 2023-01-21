package com.project.restaurant.dao;

import com.project.restaurant.vo.ResHashtag;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class ResHashtagDao {
    private final SqlSessionTemplate sqlSession;

    public void insert(ResHashtag resHashtag) {
        sqlSession.insert("resHashtagMapper.insert", resHashtag);
    }
}
