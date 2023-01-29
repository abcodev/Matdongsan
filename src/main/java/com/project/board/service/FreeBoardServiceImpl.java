package com.project.board.service;

import com.project.board.dao.FreeBoardDao;
import com.project.board.vo.FreeBoard;
import com.project.common.template.PageInfoCombine;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
@RequiredArgsConstructor
public class FreeBoardServiceImpl implements FreeBoardService {

    private final FreeBoardDao freeBoardDao;
    private final SqlSession sqlSession;
    private final PageInfoCombine pageInfoCombine;





    // 게시글 등록
    public int insertFboard(FreeBoard fb){
        return freeBoardDao.insertFboard(sqlSession, fb);
    }

    @Override
    public List<FreeBoard> selectFreeList() {
        return freeBoardDao.selectFreeList(sqlSession);
    }
}
