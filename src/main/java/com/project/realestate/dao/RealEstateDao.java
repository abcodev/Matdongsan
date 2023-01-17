package com.project.realestate.dao;

import com.project.board.qnaBoard.vo.PageInfo;
import com.project.common.vo.RealEstateRent;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Map;

@Repository
public class RealEstateDao {
    public ArrayList<RealEstateRent> selectList(SqlSession sqlSession, Map<String, Object> paramMap) {

        int offset = ( ((PageInfo)paramMap.get("pi")).getCurrentPage() - 1) * ((PageInfo)paramMap.get("pi")).getBoardLimit();
        int limit = ((PageInfo)paramMap.get("pi")).getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset, limit);

        return (ArrayList) sqlSession.selectList("realestateMapper.searchList", paramMap, rowBounds);
    }

}
