package com.project.board.service;

import com.project.board.dao.FreeBoardDao;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfo;
import com.project.common.template.Pagination;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class FreeBoardServiceImpl implements FreeBoardService {

    @Autowired
    private FreeBoardDao boardDao;
    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private Pagination pagination;
    @Override
    public int selectFlistCount() {

        return boardDao.selectFlistCount(sqlSession);
    }
    @Override
    public int selectFlistCount(Map<String,Object> paramMap) {

        return boardDao.selectFlistCount(sqlSession, paramMap);
    }

    @Override
    public Map<String , Object> selectFlist(int currentPage){

        Map<String , Object> map = new HashMap();


        int listCount = selectFlistCount();

        int pageLimit = 10;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);

        map.put("pi",pi);

        ArrayList<QnaBoard> flist = boardDao.selectFlist(sqlSession, pi);

        map.put("flist", flist);
        return map;
    }

    @Override
    public Map<String, Object> selectFlist(Map<String,Object> paramMap){

        Map<String, Object> map = new HashMap();

        int listCount = selectFlistCount(paramMap);

        int pageLimit = 10;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, (Integer) paramMap.get("fpage"), pageLimit, boardLimit);
        paramMap.put("pi", pi);

        map.put("pi", pi);


        ArrayList<QnaBoard> flist = boardDao.selectFlist(sqlSession, paramMap);
        map.put("flist", flist);

        return map;
    }


    // 게시글 등록
    public int insertFboard(FreeBoard fb){


        return boardDao.insertFboard(sqlSession, fb);
    }
}
