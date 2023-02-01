package com.project.board.service;

import com.project.board.dao.FreeBoardDao;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.Reply;
import com.project.board.vo.Report;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
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
    public FreeBoard detailFreeBoard(int fno){
        return freeBoardDao.detailFreeBoard(sqlSession, fno);
    }

    public int insertReply(Reply r){
        return freeBoardDao.insertReply(sqlSession, r);
    }

    public ArrayList<Reply> selectReplyList(int fno){
        return  freeBoardDao.selectReplyList(sqlSession, fno);
    }

    public int deletePost(int fno){
        return freeBoardDao.deletePost(sqlSession, fno);
    }

    public int updatePost(FreeBoard freeBoard){
        return freeBoardDao.updatePost(sqlSession, freeBoard);
    }

    public int insertReport(Report report){
        return freeBoardDao.insertReport(sqlSession, report);
    }
}
