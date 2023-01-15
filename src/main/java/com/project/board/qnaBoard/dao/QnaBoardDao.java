package com.project.board.qnaBoard.dao;

import com.project.board.qnaBoard.vo.QnaBoard;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public class QnaBoardDao {

    public ArrayList<QnaBoard> selectList(SqlSession sqlSession){
        return sqlSession.selectOne("boardMapper.selectList");
    }

}
