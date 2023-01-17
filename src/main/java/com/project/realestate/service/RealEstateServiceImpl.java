package com.project.realestate.service;

import com.project.board.qnaBoard.vo.PageInfo;
import com.project.common.template.Pagination;
import com.project.common.vo.RealEstateRent;
import com.project.realestate.dao.RealEstateDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class RealEstateServiceImpl implements RealEstateService{
    public RealEstateServiceImpl(RealEstateDao realEstateDao, SqlSession sqlSession, Pagination pagination){
        this.realEstateDao = realEstateDao;
        this.sqlSession = sqlSession;
    }
    @Autowired
    private RealEstateDao realEstateDao;
    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private Pagination pagination;


    public int selectListCount(Map<String, Object> paramMap) {
        return realEstateDao.selectListCount(sqlSession, paramMap);
    }
    @Override
    public Map<String, Object> selectList(Map<String, Object> paramMap){

        Map<String, Object> map = new HashMap();
        //페이징 처리 작업
        int listCount = selectListCount(paramMap);

        int pageLimit = 5;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, (Integer)paramMap.get("currentPage"), pageLimit, boardLimit);
        paramMap.put("pi", pi);
        map.put("pi", pi);

        ArrayList<RealEstateRent> list =  realEstateDao.selectList(sqlSession, paramMap);
        map.put("list", list);

        return map;
    }
}
