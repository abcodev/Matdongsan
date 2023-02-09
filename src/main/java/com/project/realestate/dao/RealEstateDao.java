package com.project.realestate.dao;

import com.project.board.vo.FreeBoard;
import com.project.common.template.PageInfoCombine;
import com.project.realestate.dto.*;
import com.project.realestate.vo.RealEstateAgent;
import com.project.realestate.vo.RealEstateRent;
import com.project.restaurant.vo.Restaurant;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

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


    public List<RealEstateRent> selectListByFilter(PageInfoCombine pageInfoCombine, RealEstateRentListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("rentMapper.selectListByFilter", filter, rowBounds);
    }


    // 자치구 리스트
    public ArrayList<RealEstateRent> searchLocalList(SqlSession sqlSession){
        return (ArrayList) sqlSession.selectList("rentMapper.searchLocalList");
    }

    // 동 리스트
    public ArrayList<RealEstateRent> searchDongList(SqlSession sqlSession, String state){
        return  (ArrayList) sqlSession.selectList("rentMapper.searchDongList", state);
    }

    // 해당 구 자유게시판 글
    public ArrayList<FreeBoard> selectFboard(SqlSession sqlSession, String state){
        return (ArrayList) sqlSession.selectList("freeBoardMapper.selectFboard", state);
    }

    // 매매, 전세 평균값
    public RealEstateRent chartList(SqlSession sqlSession, String state){
        return sqlSession.selectOne("rentMapper.selectChartList", state);
    }

    public RealEstateRent basicChart(SqlSession sqlSession){
        return sqlSession.selectOne("rentMapper.selectBasicList");
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

    public List<RealEstateAgent> selectAgentList() {
        return sqlSession.selectList("sellMapper.selectAgent");
    }

    public List<RealEstateAgent> selectAgentListByBjdongNm(String bjdongNm) {
        return sqlSession.selectList("sellMapper.selectAllByBjdongNm", bjdongNm);
    }

    public List<RealEstateViewDto> selectBldgNmListIn(List<String> recentEstateNoList) {
        return sqlSession.selectList("sellMapper.selectBldgNmListIn", recentEstateNoList);
    }
}

