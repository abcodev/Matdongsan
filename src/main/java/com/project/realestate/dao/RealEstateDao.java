package com.project.realestate.dao;


import com.project.common.template.PageInfo;
import com.project.realestate.vo.RealEstateRent;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Map;

@Repository
public class RealEstateDao {

    public int selectListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("rentMapper.selectListCount");
    }
    public int selectListCount(SqlSession sqlSession, Map<String, Object> paramMap) {
        return sqlSession.selectOne("rentMapper.searchListCount", paramMap);
    }

    public ArrayList<RealEstateRent> selectList(SqlSession sqlSession, PageInfo pi){

        int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
        int limit = pi.getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset, limit);

        return (ArrayList)sqlSession.selectList("rentMapper.selectList", rowBounds);
    }


    public ArrayList<RealEstateRent> selectList(SqlSession sqlSession, Map<String, Object> paramMap) {

        int offset = ( ((PageInfo)paramMap.get("pi")).getCurrentPage() - 1) * ((PageInfo)paramMap.get("pi")).getBoardLimit();
        int limit = ((PageInfo)paramMap.get("pi")).getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset, limit);

        return (ArrayList) sqlSession.selectList("rentMapper.searchList", paramMap, rowBounds);
    }


    public ArrayList<RealEstateRent> searchLocalList(SqlSession sqlSession){
        return (ArrayList) sqlSession.selectList("rentMapper.searchLocalList");
    }

    public ArrayList<String> selectOption(SqlSession sqlSession, String local){
        return  (ArrayList) sqlSession.selectList("rentMapper.selectOption", local);
    }
    public ArrayList<String> getSellList(SqlSession sqlSession){
        return (ArrayList) sqlSession.selectList("sellMapper.getSellList");

    }

}
