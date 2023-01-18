package com.project.restaurant.dao;

import com.project.common.template.PageInfoCombine;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class RestaurantDao {

    private final SqlSessionTemplate sqlSession;

//    public List<Restaurant> selectResList() {
//        return sqlSession.selectList("resMapper.selectResList");
//    }

    public int selectResListCount(RestaurantListFilter filter) {
        return sqlSession.selectOne("resMapper.selectListCount", filter);
    }


    public List<Restaurant> selectResList(PageInfoCombine pageInfoCombine, RestaurantListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("resMapper.selectResList", filter, rowBounds);
    }


    public List<String> selectStateList() {
        return sqlSession.selectList("resMapper.selectStateList");
    }

    public void updateImage(String restaurantNumber, String imageUrl) {
        HashMap<String, String> params = new HashMap<>();
        params.put("RES_NO", restaurantNumber);
        params.put("RES_IMGURL", imageUrl);
        sqlSession.update("resMapper.updateImage", params);
    }
}
