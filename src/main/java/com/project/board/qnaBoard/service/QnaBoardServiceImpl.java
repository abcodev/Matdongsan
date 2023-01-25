package com.project.board.qnaBoard.service;

import com.project.board.qnaBoard.dao.QnaBoardDao;
import com.project.board.qnaBoard.vo.BoardType;
import com.project.common.template.PageInfo;
import com.project.board.qnaBoard.vo.QnaBoard;
import com.project.common.template.Pagination;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class QnaBoardServiceImpl implements QnaBoardService{

    @Autowired
    private QnaBoardDao boardDao;
    @Autowired
    private SqlSession sqlSession;
    @Autowired
    private Pagination pagination;
    @Override
    public int selectListCount(String boardCode) {
        return boardDao.selectListCount(sqlSession,boardCode);
    }
    @Override
    public int selectListCount(Map<String,Object> paramMap) {
        return boardDao.selectListCount(sqlSession, paramMap);
    }

    @Override
    public Map<String , Object> selectList(int currentPage,String boardCode){

        Map<String , Object> map = new HashMap();


        int listCount = selectListCount(boardCode);

        int pageLimit = 10;
        int boardLimit = 5;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);

        map.put("pi",pi);

        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession, pi,boardCode);

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
    public int insertQboard(QnaBoard qb) {
        return boardDao.insertQboard(sqlSession, qb);
    }


    @Override
    public List<BoardType> selectBoardTypeList() {
        return boardDao.selectBoardTypeList(sqlSession);

    }
    @Override
    public QnaBoard selectQboard(int qBno){
        return boardDao.selectQboard(sqlSession,qBno);
    }

    @Override
    public int updateBoard(int qBno){
        return boardDao.updateBoard(sqlSession,qBno);
    }
    @Override
    public int increaseCount(int qBno){
        return boardDao.increaseCount(sqlSession,qBno);
    }
    @Override
    public int insertAnswer(QnaBoard qb){
        return  boardDao.insertAnswer(sqlSession,qb);
    }
}
