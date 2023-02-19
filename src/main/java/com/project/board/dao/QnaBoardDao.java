package com.project.board.dao;

import com.project.board.dto.QnaBoardListFilter;
import com.project.board.vo.Report;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;

@Repository
public class QnaBoardDao {

    public List<QnaBoard> selectQnaList(SqlSession sqlSession,
                                        PageInfoCombine pageInfoCombine,
                                        QnaBoardListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("boardMapper.selectQnaList", filter, rowBounds);
    }

    public int selectQnaListCount(SqlSession sqlSession, QnaBoardListFilter filter) {
        return sqlSession.selectOne("boardMapper.selectQnaListCount", filter);
    }


    public int insertQboard(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("boardMapper.insertQboard", qb);
    }

    public int insertNotice(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("boardMapper.insertNotice", qb);
    }

    public QnaBoard selectQboard(SqlSession sqlSession, int qBno) {
        return sqlSession.selectOne("boardMapper.selectQboard", qBno);
    }

    public int selectReportList(SqlSession sqlSession) {
        return sqlSession.update("boardMapper.selectReportList");
    }

    public int updateBoard(SqlSession sqlSession, int qBno) {
        return sqlSession.update("boardMapper.updateBoard", qBno);
    }

    public int increaseCount(SqlSession sqlSession, int qBno) {
        return sqlSession.update("boardMapper.increaseCount", qBno);
    }

    public int insertAnswer(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("boardMapper.insertAnswer", qb);
    }

    public List<QnaBoard> selectAnswer(SqlSession sqlSession, int qBno) {
        return sqlSession.selectList("boardMapper.selectAnswer", qBno);
    }

    public int deleteBoard(SqlSession sqlSession, int qBno) {
        return sqlSession.update("boardMapper.deleteBoard", qBno);
    }

    public int insertReport(SqlSession sqlSession, Report report) {
        return sqlSession.insert("boardMapper.insertReport", report);
    }

    public QnaBoard selectByQnaBno(SqlSession sqlSession, int parentBno) {
        return sqlSession.selectOne("boardMapper.selectByQnaBno", parentBno);
    }

    public List<QnaBoard> selectQaNoticeList(SqlSession sqlSession) {
        return sqlSession.selectList("boardMapper.selectQaNoticeList");
    }

}
