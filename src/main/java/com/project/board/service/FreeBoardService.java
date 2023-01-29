package com.project.board.service;

import com.project.board.vo.FreeBoard;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface FreeBoardService {

    List<FreeBoard> selectFreeList();

    public int insertFboard(FreeBoard fb);

    public FreeBoard selectFboard(int fno);

}
