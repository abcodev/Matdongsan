package com.project.board.repository;

import com.project.board.dto.QnaBoardListFilter;
import com.project.board.vo.Report;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QnaBoardRepository {

    public List<QnaBoard> selectQnaList(SqlSession sqlSession,
                                        PageInfoCombine pageInfoCombine,
                                        QnaBoardListFilter filter) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("qnaBoardMapper.selectQnaList", filter, rowBounds);
    }

    public int selectQnaListCount(SqlSession sqlSession, QnaBoardListFilter filter) {
        return sqlSession.selectOne("qnaBoardMapper.selectQnaListCount", filter);
    }


    public int insertQboard(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("qnaBoardMapper.insertQboard", qb);
    }

    public int insertNotice(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("qnaBoardMapper.insertNotice", qb);
    }

    public QnaBoard selectQboard(SqlSession sqlSession, int qBno) {
        return sqlSession.selectOne("qnaBoardMapper.selectQboard", qBno);
    }

    public int selectReportList(SqlSession sqlSession) {
        return sqlSession.update("qnaBoardMapper.selectReportList");
    }

    public int updateBoard(SqlSession sqlSession, int qBno) {
        return sqlSession.update("qnaBoardMapper.updateBoard", qBno);
    }

    public int increaseCount(SqlSession sqlSession, int qBno) {
        return sqlSession.update("qnaBoardMapper.increaseCount", qBno);
    }

    public int insertAnswer(SqlSession sqlSession, QnaBoard qb) {
        return sqlSession.insert("qnaBoardMapper.insertAnswer", qb);
    }

    public List<QnaBoard> selectAnswer(SqlSession sqlSession, int qBno) {
        return sqlSession.selectList("qnaBoardMapper.selectAnswer", qBno);
    }

    public int deleteBoard(SqlSession sqlSession, int qBno) {
        return sqlSession.update("qnaBoardMapper.deleteBoard", qBno);
    }

    public int insertReport(SqlSession sqlSession, Report report) {
        return sqlSession.insert("qnaBoardMapper.insertReport", report);
    }

    public QnaBoard selectByQnaBno(SqlSession sqlSession, int parentBno) {
        return sqlSession.selectOne("qnaBoardMapper.selectByQnaBno", parentBno);
    }

    public List<QnaBoard> selectQaNoticeList(SqlSession sqlSession) {
        return sqlSession.selectList("qnaBoardMapper.selectQaNoticeList");
    }

}
