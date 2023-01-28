package com.project.board.service;

import java.util.List;
import java.util.Map;

public interface FreeBoardService {

    public int selectFlistCount();
    public int selectFlistCount(Map<String, Object> paramMap);

    public Map<String, Object> selectFlist(int currentPage);
    Map<String, Object> selectFlist(Map<String, Object> paramMap);
   // public int insertFboard(FreeBoard fb);
}
