package com.project.board.service;

import com.project.board.vo.BoardType;
import com.project.board.vo.FreeBoard;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {

    public int selectFlistCount(String boardCode);
    public int selectFlistCount(Map<String, Object> paramMap);
    public List<BoardType> selectBoardTypeList();
    public Map<String, Object> selectFlist(int currentPage,String boardCode);
    Map<String, Object> selectFlist(Map<String, Object> paramMap);
    public int insertFboard(FreeBoard fb);
}
