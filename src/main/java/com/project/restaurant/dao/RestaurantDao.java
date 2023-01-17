package com.project.restaurant.dao;

import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class RestaurantDao {

    private final SqlSessionTemplate sqlSession;

    public List<Restaurant> selectResList() {
        return sqlSession.selectList("resMapper.selectResList");
    }
}
