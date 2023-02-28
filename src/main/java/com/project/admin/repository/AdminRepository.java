package com.project.admin.repository;


import com.project.admin.dto.HandleApplyRequest;
import com.project.admin.vo.Admin;
import com.project.admin.vo.BrokerEnroll;
import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class AdminRepository {

    public int uListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("adminMapper.uListCount");
    }

    public List<Member> selectUserList(SqlSession sqlSession, PageInfoCombine pageInfoCombine) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("adminMapper.selectUserList", null, rowBounds);
    }

    public int rListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("adminMapper.rListCount");
    }

    public List<Report> selectReportList(SqlSession sqlSession, PageInfoCombine pageInfoCombine) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("adminMapper.selectReportList", 0, rowBounds);
    }

    public int deleteQna(SqlSession sqlSession, int fNo) {
        return sqlSession.update("adminMapper.deleteQna", fNo);
    }

    public int deleteFree(SqlSession sqlSession, int fNo) {
        return sqlSession.update("adminMapper.deleteFree", fNo);
    }

    public int insertBlack(SqlSession sqlSession, Admin ad) {
        return sqlSession.insert("adminMapper.insertBlack", ad);

    }

    public int BrokerListCount(SqlSession sqlSession) {
        return sqlSession.selectOne("realEstateAgentMapper.brokerListCount");
    }

    public List<BrokerEnroll> BrokerList(SqlSession sqlSession, PageInfoCombine pageInfoCombine) {
        RowBounds rowBounds = pageInfoCombine.generateRowBounds();
        return sqlSession.selectList("realEstateAgentMapper.BrokerList", null, rowBounds);
    }

    public void changeMemberGrade(SqlSession sqlSession, HandleApplyRequest req) {
        sqlSession.update("memberMapper.changeMemberGrade", req);
    }

    public void changeEstateStatus(SqlSession sqlSession, HandleApplyRequest req) {
        sqlSession.update("realEstateAgentMapper.changeEstateStatus", req);
    }

}
