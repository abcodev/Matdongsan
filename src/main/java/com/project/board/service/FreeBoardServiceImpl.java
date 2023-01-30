package com.project.board.service;

import com.project.board.dao.FreeBoardDao;
import com.project.board.vo.FreeBoard;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
@RequiredArgsConstructor
public class FreeBoardServiceImpl implements FreeBoardService {

    private final FreeBoardDao freeBoardDao;
    private final SqlSession sqlSession;

    @Override
    public List<FreeBoard> selectFreeList(Map<String,String> option) {
        return freeBoardDao.selectFreeList(sqlSession,option);
    }

    // 게시글 등록
    public int insertFboard(FreeBoard fb){
        return freeBoardDao.insertFboard(sqlSession, fb);
    }

    // 게시글 상세조회
    public FreeBoard selectFboard(int fno){
        return freeBoardDao.selectFboard(sqlSession, fno);
    }
}
