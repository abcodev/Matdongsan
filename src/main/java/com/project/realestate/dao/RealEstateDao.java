package com.project.realestate.dao;

import com.project.common.template.PageInfoCombine;
import com.project.realestate.dto.RealEstateDetailDto;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListFilter;
import com.project.realestate.vo.RealEstateRent;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class RealEstateDao {

    private final SqlSessionTemplate sqlSession;

    public int selectListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("rentMapper.selectListCount");
    }
    public int selectListCountByFilter(RealEstateRentListFilter filter) {
        return sqlSession.selectOne("rentMapper.selectListCountByFilter", filter);
    }
//    public int selectListCount(SqlSession sqlSession, Map<String, Object> paramMap) {
//        return sqlSession.selectOne("rentMapper.searchListCount", paramMap);
//    }


    public List<RealEstateRent> selectListByFilter(PageInfoCombine pageInfoCombine, RealEstateRentListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("rentMapper.selectListByFilter", filter, rowBounds);
    }

//    public List<RealEstateRent> searchResult(PageInfoCombine pageInfoCombine, RealEstateRentListFilter filter){
//        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
//
//        return sqlSession.selectList("rentMapper.searchSellResult", filter, rowBounds);
//    }

    // 자치구 리스트
    public ArrayList<RealEstateRent> searchLocalList(SqlSession sqlSession){
        return (ArrayList) sqlSession.selectList("rentMapper.searchLocalList");
    }

    // 동 리스트
    public ArrayList<RealEstateRent> searchDongList(SqlSession sqlSession, String state){
        return  (ArrayList) sqlSession.selectList("rentMapper.searchDongList", state);
    }


    public List<RealEstateMainListDto> getSellList(SqlSession sqlSession) {
        return sqlSession.selectList("sellMapper.getSellList");
    }


    public RealEstateDetailDto realEstateDetail(String estateNo) {
        return sqlSession.selectOne("sellMapper.selectEstateDetail", estateNo);
    }

    public List<String> selectPastList(String bldgNm) {
        return sqlSession.selectList("sellMapper.selectPastList", bldgNm);
    }
}

