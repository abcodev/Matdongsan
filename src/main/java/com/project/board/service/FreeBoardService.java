package com.project.board.service;

import com.project.board.vo.FreeBoard;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface FreeBoardService {


    public int insertFboard(FreeBoard fb);

    List<FreeBoard> selectFreeList(Map<String,String> option);
}
