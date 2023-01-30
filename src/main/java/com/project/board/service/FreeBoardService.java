package com.project.board.service;

import com.project.board.vo.FreeBoard;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface FreeBoardService {


    List<FreeBoard> selectFreeList(Map<String,String> option);

    public int insertFboard(FreeBoard fb);

    public FreeBoard detailFreeBoard(int fno);

}