package com.project.board.dao;

import com.project.board.dto.FreeBoardCountDto;
import com.project.board.dto.FreeBoardListFilter;
import com.project.board.dto.FreeBoardListRequest;
import com.project.board.dto.FreeBoardListResponse;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.HotWeek;
import com.project.board.vo.Reply;
import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import org.apache.ibatis.session.RowBounds;
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

    public int insertNotice(SqlSession sqlSession, FreeBoard fb){
        return sqlSession.insert("freeBoardMapper.insertNotice", fb);
    }

    public List<FreeBoard> selectFreeList(SqlSession sqlSession,
                                       PageInfoCombine pageInfoCombine,
                                       FreeBoardListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("freeBoardMapper.selectFreeList",filter,rowBounds);
    }

    public List<FreeBoard> freeNoticeList(SqlSession sqlSession){
        return sqlSession.selectList("freeBoardMapper.freeNoticeList");
    }

    public int selectReportList(SqlSession sqlSession){
        return sqlSession.update("freeBoardMapper.selectReportList");
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

    public void freeBoardCount(SqlSession sqlSession, FreeBoardCountDto count) {
        sqlSession.insert("freeBoardMapper.freeBoardCount",count);
    }

    public List<HotWeek> hotWeekList(SqlSession sqlSession) {
        return sqlSession.selectList("freeBoardMapper.hotWeekList");
    }

    public int selectFreeListCount(SqlSession sqlSession, FreeBoardListFilter filter) {
        return sqlSession.selectOne("freeBoardMapper.selectFreeListCount",filter);
    }

    public List<FreeBoard> selectArrayList(SqlSession sqlSession, String select) {
        return sqlSession.selectList("freeBoardMapper.selectArrayList",select);
    }

    public FreeBoard selectByFreeBno(SqlSession sqlSession, int freeBno) {
        return sqlSession.selectOne("freeBoardMapper.selectByFreeBno", freeBno);
    }
}
