package com.project.realestate.service;

import com.project.board.vo.FreeBoard;
import com.project.common.template.PageInfoCombine;
import com.project.member.vo.Member;
import com.project.realestate.dao.InterestEstateDao;
import com.project.realestate.dao.RealEstateDao;
import com.project.realestate.dto.*;
import com.project.realestate.vo.Interest;
import com.project.realestate.vo.RealEstateAgent;
import com.project.realestate.vo.RealEstateRent;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class RealEstateServiceImpl implements RealEstateService {

    private static final int DEFAULT_BOARD_SIZE = 10;
    private final RealEstateDao realEstateDao;
    private final InterestEstateDao interestEstateDao;
    private final SqlSession sqlSession;

    @Override
    public int selectListCount() {
        return realEstateDao.selectListCount(sqlSession);
    }

    /**
     * 부동산 리스트 - 검색결과
     */
    @Override
    public RealEstateRentListResponse selectAllList(RealEstateRentListRequest req) {

        RealEstateRentListFilter filter = RealEstateRentListFilter.from(req);
        int count = realEstateDao.selectListCountByFilter(filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_BOARD_SIZE);
        List<RealEstateRent> result = realEstateDao.selectListByFilter(pageInfoCombine, filter);
        return new RealEstateRentListResponse(result, pageInfoCombine);
    }

    /**
     * 자치 구 리스트
     */
    @Override
    public List<RealEstateRent> searchLocalList() {
        return realEstateDao.searchLocalList(sqlSession);
    }

    /**
     * 동 리스트
     */
    @Override
    public List<RealEstateRent> searchDongList(String state) {
        return realEstateDao.searchDongList(sqlSession, state);
    }

    /**
     * 메인페이지 지도 부동산 매매 리스트
     */
    @Override
    public List<RealEstateMainListDto> getSellList() {
        return realEstateDao.getSellList(sqlSession);
    }

    /**
     * 부동산 해당 구의 자유게시판글
     */
    @Override
    public List<FreeBoard> selectFboard(String state) {
        return realEstateDao.selectFboard(sqlSession, state);
    }

    /**
     * 전세, 매매 평균값
     */
    @Override
    public RealEstateRent chartList(String state) {
        return realEstateDao.chartList(sqlSession, state);
    }

    /**
     * 서울시 전세, 매매 평균
     */
    @Override
    public RealEstateRent basicChart() {
        return realEstateDao.basicChart(sqlSession);
    }

    @Override
    public RealEstateDetailDto realEstateDetail(String estateNo) {
        return realEstateDao.realEstateDetail(estateNo);
    }

    @Override
    public List<String> selectPastList(String bldgNm) {
        return realEstateDao.selectPastList(bldgNm);
    }

    @Override
    public boolean checkInterest(String estateNo, Member loginUser) {
        return interestEstateDao.checkInterest(estateNo, loginUser.getMemberNo());
    }

    @Override
    public void saveInterest(RealEstateInterestRequest req, Member loginUser) {
        if (req.getIsInterest()) {
            interestEstateDao.insert(req.getEstateNo(), loginUser.getMemberNo());
        } else {
            interestEstateDao.delete(req.getEstateNo(), loginUser.getMemberNo());
        }
    }


    @Override
    public List<Interest> getMostInterest() {
        return interestEstateDao.getMostInterest();
    }

    @Override
    public List<RealEstateAgent> selectAgentList(String bjdongNm) {
        return realEstateDao.selectAgentListByBjdongNm(bjdongNm);
    }

    @Override
    public List<RealEstateViewDto> selectViewListIn(List<String> recentEstateNoList) {
        if (recentEstateNoList.isEmpty()) {
            return Collections.emptyList();
        }
        return recentEstateNoList.stream()
                .map(this::realEstateDetail)
                .filter(Objects::nonNull)
                .map(RealEstateViewDto::of)
                .collect(Collectors.toList());
    }
}
