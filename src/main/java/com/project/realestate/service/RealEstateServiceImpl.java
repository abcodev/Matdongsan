package com.project.realestate.service;

import com.project.common.template.PageInfoCombine;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListFilter;
import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.vo.RealEstateRent;
import com.project.realestate.dao.RealEstateDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RealEstateServiceImpl implements RealEstateService{

    private static final int DEFAULT_BOARD_SIZE = 10;
    private final RealEstateDao realEstateDao;
    private final SqlSession sqlSession;

    @Autowired
    public RealEstateServiceImpl(RealEstateDao realEstateDao, SqlSession sqlSession){
        this.realEstateDao = realEstateDao;
        this.sqlSession = sqlSession;
    }

    @Override
    public int selectListCount(){
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


    // 자치구 리스트
    @Override
    public List<RealEstateRent> searchLocalList(){
        return realEstateDao.searchLocalList(sqlSession);
    }

    // 동 리스트
    @Override
    public List<RealEstateRent> searchDongList(String state){
        return realEstateDao.searchDongList(sqlSession, state);
    }

    @Override
    public List<RealEstateMainListDto> getSellList() {
        return realEstateDao.getSellList(sqlSession);
    }


}
