package com.project.admin.service;

import com.project.admin.dao.AdminDao;
import com.project.admin.dto.*;
import com.project.admin.vo.Admin;
import com.project.admin.vo.BrokerEnroll;
import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import com.project.common.template.Pagination;
import com.project.member.dao.MemberDao;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.test.context.jdbc.Sql;

import java.util.List;


@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {

    private final AdminDao adminDao;
    private final MemberDao memberDao;

    private final SqlSession sqlSession;

    private static final int DEFAULT_RES_SIZE = 12;

    @Override
    public int uListCount() {
        return 0;
    }


    @Override
    public AdminListResponse selectUserList(AdminListRequest request) {
        int count = adminDao.uListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Member> result = adminDao.selectUserList(sqlSession, pageInfoCombine);
        return new AdminListResponse(result, pageInfoCombine);
    }

    @Override
    public int rListCount() {
        return 0;
    }

    @Override
    public ReportListResponse selectReportList(AdminListRequest request, int fNo) {
        int count = adminDao.rListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Report> result = adminDao.selectReportList(sqlSession, pageInfoCombine, fNo);
        return new ReportListResponse(result, pageInfoCombine, fNo);
    }


    @Override
    public int deleteQna(int fNo) {
        return adminDao.deleteQna(sqlSession, fNo);
    }

    @Override
    public int deleteFree(int fNo) {
        return adminDao.deleteFree(sqlSession, fNo);
    }

    @Override
    public int insertBlack(Admin ad) {
        return adminDao.insertBlack(sqlSession, ad);

    }

    @Override
    public BrokerListResponse BrokerList(int currentPage) {
        int count = adminDao.BrokerListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, currentPage, DEFAULT_RES_SIZE);
        List<BrokerEnroll> brokerEnrollList = adminDao.BrokerList(sqlSession, pageInfoCombine);
        return new BrokerListResponse(brokerEnrollList, pageInfoCombine);
    }

    @Override
    public void ban(BanRequest req) {
        memberDao.updateBanPeriod(req.getMemberNo(), req.periodToLocalDateTime());
    }

}
