package com.project.board.qnaBoard.service;

import java.util.Map;

public interface QnaBoardService {

    public int selectListCount();
    public int selectListCount(Map<String, Object> paramMap);
    public Map<String , Object>selectList(int currentPage);

    Map<String, Object> selectList(Map<String, Object> paramMap);

}
