package com.project.admin.service;

import com.project.admin.repository.AdminRepository;
import com.project.admin.dto.*;
import com.project.admin.vo.Admin;
import com.project.admin.vo.BrokerEnroll;
import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmEventProducer;
import com.project.alarm.service.AlarmService;
import com.project.board.vo.Report;
import com.project.common.template.PageInfoCombine;
import com.project.member.repository.MemberRepository;
import com.project.member.vo.Member;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@RequiredArgsConstructor
public class AdminService {

    private final AdminRepository adminRepository;
    private final MemberRepository memberRepository;
    private final SqlSession sqlSession;
    private final AlarmService alarmService;
    private final AlarmEventProducer alarmEventProducer;

    private static final int DEFAULT_RES_SIZE = 12;


    public AdminListResponse selectUserList(AdminListRequest request) {
        int count = adminRepository.uListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Member> result = adminRepository.selectUserList(sqlSession, pageInfoCombine);
        return new AdminListResponse(result, pageInfoCombine);
    }


    public ReportListResponse selectReportList(AdminListRequest request) {
        int count = adminRepository.rListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, request.getCurrentPage(), DEFAULT_RES_SIZE);
        List<Report> result = adminRepository.selectReportList(sqlSession, pageInfoCombine);
        return new ReportListResponse(result, pageInfoCombine);
    }


    public int deleteQna(int fNo) {
        return adminRepository.deleteQna(sqlSession, fNo);
    }

    public int deleteFree(int fNo) {
        return adminRepository.deleteFree(sqlSession, fNo);
    }

    public int insertBlack(Admin ad) {
        return adminRepository.insertBlack(sqlSession, ad);
    }


    public void ban(BanRequest req) {
        memberRepository.updateBanPeriod(req.getMemberNo(), req.periodToLocalDateTime());
    }

    public BrokerListResponse brokerList(int currentPage) {
        int count = adminRepository.BrokerListCount(sqlSession);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, currentPage, DEFAULT_RES_SIZE);
        List<BrokerEnroll> brokerEnrollList = adminRepository.BrokerList(sqlSession, pageInfoCombine);
        return new BrokerListResponse(brokerEnrollList, pageInfoCombine);
    }

    @Transactional
    public void handleApply(HandleApplyRequest req) {
        if (req.getHandle().equals("consent")) {
            adminRepository.changeMemberGrade(sqlSession, req);
        }
        adminRepository.changeEstateStatus(sqlSession, req);

        long receiverNo = req.getMemberNo();
        AlarmTemplate<String> template = null;
        if (req.getHandle().equals("consent")) {
            template = AlarmTemplate.generateNewBrokerAcceptTemplate(receiverNo, req.getAgentNo());
            alarmEventProducer.produceChangeGrade(receiverNo);
        } else if (req.getHandle().equals("reject")) {
            template = AlarmTemplate.generateNewBrokerRejectTemplate(receiverNo, req.getAgentNo());
        }
        alarmService.send(template);
    }

}
