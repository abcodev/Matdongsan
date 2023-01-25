package com.project.board.freeBoard.service;

import com.project.board.qnaBoard.vo.BoardType;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {

    public int selectFlistCount(String boardCode);
    public int selectFlistCount(Map<String, Object> paramMap);
    public List<BoardType> selectBoardTypeList();
    public Map<String, Object> selectFlist(int currentPage,String boardCode);
    Map<String, Object> selectFlist(Map<String, Object> paramMap);
}
