package com.project.board.qnaBoard.service;

import com.project.board.qnaBoard.controller.QnaBoardController;
import com.project.board.qnaBoard.vo.BoardType;
import com.project.board.qnaBoard.vo.QnaBoard;

import java.util.List;
import java.util.Map;

public interface QnaBoardService {


    public int selectListCount(String boardCode);
    public int selectListCount(Map<String, Object> paramMap);
    public List<BoardType> selectBoardTypeList();
    public Map<String, Object> selectList(int currentPage,String boardCode);
    Map<String, Object> selectList(Map<String, Object> paramMap);
    public int insertQboard(QnaBoard qb);
    public QnaBoard selectQboard(int qBno);
    public int updateBoard(int qBno);
    public int increaseCount(int qBno);

    public int insertAnswer(QnaBoard qb);

}
