package com.project.board.dao;

import com.project.board.vo.FreeBoard;
import com.project.board.vo.Reply;
import com.project.board.vo.Report;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Repository
public class FreeBoardDao {

    public int insertFboard(SqlSession sqlSession, FreeBoard fb){
        return sqlSession.insert("freeBoardMapper.insertFboard", fb);
    }

    public List<FreeBoard> selectFreeList(SqlSession sqlSession,Map<String,String> option) {
            return sqlSession.selectList("freeBoardMapper.selectFreeList",option);
    }

    public FreeBoard detailFreeBoard (SqlSession sqlSession, int fno){
        return sqlSession.selectOne("freeBoardMapper.detailFreeBoard", fno);
    }

    public int insertReply(SqlSession sqlSession, Reply r){
        return sqlSession.insert("freeBoardMapper.insertReply", r);
    }

    public ArrayList<Reply> selectReplyList(SqlSession sqlSession, int fno){
        return (ArrayList) sqlSession.selectList("freeBoardMapper.selectReplyList", fno);
    }

    public int deletePost(SqlSession sqlSession, int fno){
        return sqlSession.update("freeBoardMapper.deletePost", fno);
    }

    public int updatePost(SqlSession sqlSession, FreeBoard freeBoard){
        return  sqlSession.update("freeBoardMapper.updatePost", freeBoard);
    }

    public int insertReport(SqlSession sqlSession, Report report){
        return  sqlSession.insert("freeBoardMapper.insertReport", report);
    }

    public int deleteReply(SqlSession sqlSession, Reply reply){
        return sqlSession.update("freeBoardMapper.deleteReply", reply);
    }
}
