package com.project.board.qnaBoard.dao;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.apache.ibatis.session.SqlSession;

public class qnaBoardDao {

    public int selectBoard(SqlSession sqlSession, int bno) {
        return sqlSession.selectOne("boardMapper.selectList", bno);
    }


}
