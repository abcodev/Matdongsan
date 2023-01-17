package com.project.restaurant.dao;

import com.project.common.template.PageInfo;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class RestaurantDao {

    private final SqlSessionTemplate sqlSession;

//    public List<Restaurant> selectResList() {
//        return sqlSession.selectList("resMapper.selectResList");
//    }

    public int selectResListCount() {
        return sqlSession.selectOne("resMapper.selectListCount");
    }


    public List<Restaurant> selectResList(PageInfo pageInfo, RestaurantListFilter filter) {
        RowBounds rowBounds = pageInfo.generateRowBounds();
        return sqlSession.selectList("resMapper.selectResList", filter, rowBounds);
    }







}
