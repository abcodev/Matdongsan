package com.project.restaurant.dao;

import com.project.common.template.PageInfoCombine;
import com.project.restaurant.dto.RestaurantListFilter;
import com.project.restaurant.vo.Hashtag;
import com.project.restaurant.vo.ResHashtag;
import com.project.restaurant.vo.ResImg;
import com.project.restaurant.vo.Restaurant;
import com.project.restaurant.vo.Review;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class RestaurantDao {

    private final SqlSessionTemplate sqlSession;

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

    public List<String> selectHashtagList() {
        return sqlSession.selectList("hashtagMapper.selectHashtagList");
    }

    public void updateImage(String restaurantNumber, String imageUrl) {
        HashMap<String, String> params = new HashMap<>();
        params.put("RES_NO", restaurantNumber);
        params.put("RES_IMGURL", imageUrl);
        sqlSession.update("resMapper.updateImage", params);
    }

    public Restaurant restaurantDetail(String resNo) {
        return sqlSession.selectOne("resMapper.selectDetail",resNo);
    }

    public List<String> resHashtagByAdmin(String resNo) {
        return sqlSession.selectList("hashtagMapper.resHashtagByAdmin", resNo);
    }

    public String resInsert(Restaurant restaurant) {
        sqlSession.insert("resMapper.resInsert",restaurant);
        return restaurant.getResNo();
    }

    public int resInsertImg(ResImg resImg) {
        return sqlSession.insert("resMapper.resInsertImg",resImg);
    }


    public ArrayList<Review> selectReviewList(SqlSession sqlSession, int resNo) {
        return (ArrayList) sqlSession.selectList("resMapper.selectReviewList", resNo);
    }


    public int insertResImg(SqlSession sqlSession, ResImg img) {
        return sqlSession.update("boardMapper.insertResImg",img);
    }

    public int insertResImgList(SqlSession sqlSession, List<ResImg> ResImgList) {
        return sqlSession.insert("resMapper.insertResImgList", ResImgList);
    }












    public void hasTagInsert(String h) {
        sqlSession.insert("resMapper.hashTagInsert",h);
    }

    public void resHashtagInsert(ResHashtag resHashtag) {
        sqlSession.insert("hashtagMapper.resHashtagInsert",resHashtag);
    }
}
