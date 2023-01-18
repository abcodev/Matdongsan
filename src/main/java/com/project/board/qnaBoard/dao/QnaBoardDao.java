package com.project.board.qnaBoard.dao;

import com.project.board.qnaBoard.vo.BoardType;
import com.project.common.template.PageInfo;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Repository
public class QnaBoardDao {

    public int selectListCount(SqlSession sqlSession,String boardCode) {
        return sqlSession.selectOne("boardMapper.selectListCount",boardCode);
    }

    public int selectListCount(SqlSession sqlSession , Map<String, Object> paramMap) {
        return sqlSession.selectOne("boardMapper.searchListCount", paramMap);
    }

    public ArrayList<QnaBoard> selectList(SqlSession sqlSession, PageInfo pi, String boardCode){
        int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
        int limit = pi.getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset,limit);

        return (ArrayList) sqlSession.selectList("boardMapper.selectList", boardCode ,rowBounds);
    }
    public ArrayList<QnaBoard> selectList(SqlSession sqlSession, Map<String,Object> paramMap){
        int offset = ( ((PageInfo)paramMap.get("pi")).getCurrentPage() -1) * ((PageInfo)paramMap.get("pi")).getBoardLimit();
        int limit = ((PageInfo)paramMap.get("pi")).getBoardLimit();

        RowBounds rowBounds = new RowBounds(offset,limit);

        return (ArrayList) sqlSession.selectList("boardMapper.searchList", paramMap ,rowBounds);
    }

    public int insertBoard(SqlSession sqlSession, QnaBoard qb){
        return sqlSession.insert("boardMapper.insertBoard",qb);
    }
    public List<BoardType> selectBoardTypeList(SqlSession sqlSession) {
        return sqlSession.selectList("boardMapper.selectBoardTypeList");
    }

    public QnaBoard selectQboard(SqlSession sqlSession, int qBno) {
        return sqlSession.selectOne("boardMapper.selectQboard",qBno);
    }
    public int updateBoard(SqlSession sqlSession, int qBno){
        return sqlSession.update("boardMapper.updateBoard",qBno);
    }
    public int increaseCount(SqlSession sqlSession,int qBno){
    return sqlSession.update("boardMapper.increaseCount",qBno);
    }

}
