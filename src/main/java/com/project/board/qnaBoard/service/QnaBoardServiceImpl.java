package com.project.board.qnaBoard.service;

import com.project.board.qnaBoard.dao.QnaBoardDao;
import com.project.board.qnaBoard.vo.PageInfo;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.Pagination;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{

    private QnaBoardDao boardDao;
    private QnaBoardService boardService;
    private SqlSession sqlSession;
    private Pagination pagination;
    @Override
    public int selectListCount() {
        return boardDao.selectListCount(sqlSession);
    }

    @Override
    public int selectListCount(Map<String,Object> paramMap) {
        return boardDao.selectListCount(sqlSession, paramMap);
    }
    @Override
    public Map<String , Object> selectList(int currentPage){

        Map<String , Object> map = new HashMap();

        int listCount = selectListCount();

        int pageLimit = 10;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);

        map.put("pi",pi);

        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession, pi);

        map.put("list", list);
        return map;
    }

    @Override
    public Map<String, Object> selectList(Map<String,Object> paramMap){

        Map<String, Object> map = new HashMap();

        int listCount = selectListCount(paramMap);

        int pageLimit = 10;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, (Integer) paramMap.get("cpage"), pageLimit, boardLimit);
        paramMap.put("pi", pi);

        map.put("pi", pi);

        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession, paramMap);
        map.put("list", list);

        return map;
    }

    @Override
    public int insertBoard(QnaBoard qb){
        return boardDao.insertBoard(sqlSession, qb);
    }

}
