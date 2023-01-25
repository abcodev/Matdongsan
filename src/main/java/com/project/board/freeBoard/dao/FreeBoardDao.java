package com.project.board.freeBoard.dao;

import com.project.board.qnaBoard.vo.BoardType;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.PageInfo;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class FreeBoardDao {

    public int selectFlistCount(SqlSession sqlSession, String boardCode) {
        return sqlSession.selectOne("boardMapper.selectFlistCount",boardCode);
    }

    public int selectFlistCount(SqlSession sqlSession , Map<String, Object> paramMap) {
        return sqlSession.selectOne("boardMapper.searchFlistCount", paramMap);
    }

    public ArrayList<QnaBoard> selectFlist(SqlSession sqlSession, PageInfo pi, String boardCode){
        int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
        int limit = pi.getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset,limit);

        return (ArrayList) sqlSession.selectList("boardMapper.selectFlist",boardCode,rowBounds);
    }
    public ArrayList<QnaBoard> selectFlist(SqlSession sqlSession, Map<String,Object> paramMap){
        int offset = ( ((PageInfo)paramMap.get("pi")).getCurrentPage() -1) * ((PageInfo)paramMap.get("pi")).getBoardLimit();
        int limit = ((PageInfo)paramMap.get("pi")).getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset,limit);

        return (ArrayList) sqlSession.selectList("boardMapper.searchFlist", paramMap ,rowBounds);
    }
    public List<BoardType> selectBoardTypeList(SqlSession sqlSession) {
        return sqlSession.selectList("boardMapper.selectBoardTypeList");
    }
}
