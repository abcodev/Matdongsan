package com.project.board.service;

import com.project.board.vo.QnaBoard;

import java.util.List;
import java.util.Map;


public interface QnaBoardService {


    public int selectListCount();
    public int selectListCount(Map<String, Object> paramMap);

    public Map<String, Object> selectList(int currentPage);
    Map<String, Object> selectList(Map<String, Object> paramMap);
    public int insertQboard(QnaBoard qb);
    public QnaBoard selectQboard(int qBno);
    public int updateBoard(int qBno);
    public int increaseCount(int qBno);

    public int insertAnswer(QnaBoard qb);

    public List<QnaBoard> selectAnswer(int qBno);

    public int deleteBoard(int qBno);

    public int reportBoard(int qBno);

}
