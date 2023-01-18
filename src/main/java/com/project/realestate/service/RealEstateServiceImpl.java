package com.project.realestate.service;

import com.project.common.template.PageInfo;
import com.project.common.template.Pagination;
import com.project.common.vo.RealEstateRent;
import com.project.realestate.dao.RealEstateDao;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RealEstateServiceImpl implements RealEstateService{
    public RealEstateServiceImpl(RealEstateDao realEstateDao, SqlSession sqlSession, Pagination pagination){
        this.realEstateDao = realEstateDao;
        this.sqlSession = sqlSession;
        this.pagination = pagination;
    }
    @Autowired
    private RealEstateDao realEstateDao;
    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private Pagination pagination;


    public int selectListCount(){
        return realEstateDao.selectListCount(sqlSession);
    }

    @Override
    public int selectListCount(Map<String, Object> paramMap) {
        return realEstateDao.selectListCount(sqlSession, paramMap);
    }

    @Override
    public Map<String, Object> selectList(int currentPage){
        Map<String, Object> map = new HashMap();

        //페이징 처리 작업
        int listCount = selectListCount();

        int pageLimit = 5;
        int boardLimit = 8;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);

        map.put("pi", pi);
        ArrayList<RealEstateRent> list = realEstateDao.selectList(sqlSession, pi);

        map.put("list", list);

        return map;
    }

    @Override
    public Map<String, Object> selectList(Map<String, Object> paramMap){

        Map<String, Object> map = new HashMap();
        //페이징 처리 작업
        int listCount = selectListCount(paramMap);

        int pageLimit = 5;
        int boardLimit = 8;
        PageInfo pi = pagination.getPageInfo(listCount, (Integer)paramMap.get("currentPage"), pageLimit, boardLimit);
        paramMap.put("pi", pi);
        map.put("pi", pi);

        ArrayList<RealEstateRent> list =  realEstateDao.selectList(sqlSession, paramMap);
        map.put("list", list);

        return map;
    }

    @Override
    public List<RealEstateRent> searchLocalList(){
        return realEstateDao.searchLocalList(sqlSession);
    }

}
