package com.project.board.qnaBoard.service;

import java.util.Map;

public interface QnaBoardService {

    public Map<String,Object>selectList();

    public int selectBoardList(int bno);
}
