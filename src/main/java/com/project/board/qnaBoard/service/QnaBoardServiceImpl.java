package com.project.board.qnaBoard.service;

import com.project.board.qnaBoard.dao.QnaBoardDao;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{

    private QnaBoardDao boardDao;
    private SqlSession sqlSession;
    @Override
    public Map<String,Object> selectList(){
        Map<String,Object> map = new HashMap();

        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession);

        return map;
    }
}
