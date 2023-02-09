package com.project.board.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.board.dao.FreeBoardDao;
import com.project.board.dto.*;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.HotWeek;
import com.project.board.vo.Reply;
import com.project.board.vo.Report;
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
    private static final int DEFAULT_RES_SIZE = 7;

    private final AlarmService alarmService;

    @Override
    public FreeBoardListResponse selectFreeList(FreeBoardListRequest req) {
        FreeBoardListFilter filter = FreeBoardListFilter.from(req);
        int count = freeBoardDao.selectFreeListCount(sqlSession,filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_RES_SIZE);
        List<FreeBoard> result =freeBoardDao.selectFreeList(sqlSession, pageInfoCombine, filter);
        return new FreeBoardListResponse(result,pageInfoCombine);
    }

    // 게시글 등록
    public int insertFboard(FreeBoard fb){ return freeBoardDao.insertFboard(sqlSession, fb); }

    public int insertNotice(FreeBoard fb){
        return freeBoardDao.insertNotice(sqlSession, fb);
    }

    // 게시글 상세조회
    public FreeBoard detailFreeBoard(int fno){
        return freeBoardDao.detailFreeBoard(sqlSession, fno);
    }

    public int insertReply(Reply r){
        FreeBoard freeBoard = freeBoardDao.selectByFreeBno(sqlSession, r.getFreeBno());
        long receiverNo = freeBoard.getMemberNo();
        AlarmTemplate template = AlarmTemplate.generateNewReplyTemplate(receiverNo);
        alarmService.send(template);

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

    public int deleteReply(Reply reply){
        return freeBoardDao.deleteReply(sqlSession, reply);
    }

    @Override
    public void freeBoardCount(FreeBoardCountDto count) {
        freeBoardDao.freeBoardCount(sqlSession,count);
    }

    @Override
    public List<HotWeek> hotWeekList() {
        return freeBoardDao.hotWeekList(sqlSession);
    }

    @Override
    public FreeBoardArray selectArrayList(String select) {
        List<FreeBoard> freeBoardList = freeBoardDao.selectArrayList(sqlSession,select);
        return new FreeBoardArray(freeBoardList);
    }
}
