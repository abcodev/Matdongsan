package com.project.realestate.service;

import com.project.common.template.PageInfo;
import com.project.common.template.PageInfoCombine;
import com.project.realestate.dto.RealEstateMainListDto;
import com.project.realestate.dto.RealEstateRentListFilter;
import com.project.realestate.dto.RealEstateRentListRequest;
import com.project.realestate.dto.RealEstateRentListResponse;
import com.project.realestate.vo.RealEstateRent;
import com.project.realestate.dao.RealEstateDao;
import com.project.realestate.vo.RealEstateSell;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RealEstateServiceImpl implements RealEstateService{

    private static final int DEFAULT_BOARD_SIZE = 1000;

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

//    @Override
//    public int selectListCount(Map<String, Object> paramMap) {
//        return realEstateDao.selectListCount(sqlSession, paramMap);
//    }

    @Override
    public RealEstateRentListResponse selectAllList(RealEstateRentListRequest req) {
        int count = realEstateDao.selectListCount(sqlSession);

        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_BOARD_SIZE);

        List<RealEstateRent> result = realEstateDao.selectList(pageInfoCombine, RealEstateRentListFilter.from(req));

        List<RealEstateRent> searchResult = realEstateDao.selectSearchList(pageInfoCombine, RealEstateRentListFilter.from(req));

        return new RealEstateRentListResponse(result, pageInfoCombine, searchResult);
    }

//    @Override
//    public RealEstateRentListResponse selectList(RealEstateRentListRequest req){
//
//        //페이징 처리 작업
//        int listCount = selectListCount();
//
//        PageInfoCombine pageInfoCombine = new PageInfoCombine(listCount, req.getCurrentPage(), deafaultSize );
//        List<RealEstateRent> result = realEstateDao.selectList(sqlSession, pageInfoCombine, RealEstateRentListFilter.from(req));
//
//        return new RealEstateRentListResponse(result, pageInfoCombine);
//    }

//    @Override
//    public Map<String, Object> selectList(Map<String, Object> paramMap){
//
//        Map<String, Object> map = new HashMap();
//        //페이징 처리 작업
//        int listCount = selectListCount(paramMap);
//
//        int pageLimit = 5;
//        int boardLimit = 8;
//        PageInfo pi = pagination.getPageInfo(listCount, (Integer)paramMap.get("currentPage"), pageLimit, boardLimit);
//        paramMap.put("pi", pi);
//        map.put("pi", pi);
//
//        ArrayList<RealEstateRent> list =  realEstateDao.selectList(sqlSession, paramMap);
//        map.put("list", list);
//
//        return map;
//    }




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

//    @Override
//    public List<String> getSellList(){ return realEstateDao.getSellList(sqlSession);}

    @Override
    public List<RealEstateMainListDto> getSellList() {
        return realEstateDao.getSellList(sqlSession);
    }


    // 검색 결과
//    @Override
//    public List<RealEstateRent> searchResult(){
//
//    }

}
