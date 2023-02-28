package com.project.board.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.board.repository.FreeBoardRepository;
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
public class FreeBoardService {

    private final FreeBoardRepository freeBoardRepository;
    private final SqlSession sqlSession;
    private static final int DEFAULT_RES_SIZE = 7;

    private final AlarmService alarmService;

    public FreeBoardListResponse selectFreeList(FreeBoardListRequest req) {
        FreeBoardListFilter filter = FreeBoardListFilter.from(req);
        int count = freeBoardRepository.selectFreeListCount(sqlSession,filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_RES_SIZE);
        List<FreeBoard> result = freeBoardRepository.selectFreeList(sqlSession, pageInfoCombine, filter);
        return new FreeBoardListResponse(result,pageInfoCombine);
    }

    public List<FreeBoard> freeNoticeList(){
        return freeBoardRepository.freeNoticeList(sqlSession);
    }

    public int selectReportList(){
        return freeBoardRepository.selectReportList(sqlSession);
    }

    // 게시글 등록
    public int insertFboard(FreeBoard fb){ return freeBoardRepository.insertFboard(sqlSession, fb); }

    public int insertNotice(FreeBoard fb){
        return freeBoardRepository.insertNotice(sqlSession, fb);
    }

    // 게시글 상세조회
    public FreeBoard detailFreeBoard(int fno){
        return freeBoardRepository.detailFreeBoard(sqlSession,fno);
    }

    public int insertReply(Reply r){
        FreeBoard freeBoard = freeBoardRepository.selectByFreeBno(sqlSession, r.getFreeBno());
        long receiverNo = freeBoard.getMemberNo();
        AlarmTemplate<Integer> template = AlarmTemplate.generateNewReplyTemplate(receiverNo, freeBoard.getBoardNo());
        alarmService.send(template);

        return freeBoardRepository.insertReply(sqlSession, r);
    }

    public ArrayList<Reply> selectReplyList(int fno){
        return  freeBoardRepository.selectReplyList(sqlSession, fno);
    }

    public int deletePost(int fno){
        return freeBoardRepository.deletePost(sqlSession, fno);
    }

    public int updatePost(FreeBoard freeBoard){
        return freeBoardRepository.updatePost(sqlSession, freeBoard);
    }

    public int insertReport(Report report){
        return freeBoardRepository.insertReport(sqlSession, report);
    }

    public int deleteReply(Reply reply){
        return freeBoardRepository.deleteReply(sqlSession, reply);
    }

    public void freeBoardCount(FreeBoardCountDto count) {
        freeBoardRepository.freeBoardCount(sqlSession,count);
    }

    public List<HotWeek> hotWeekList() {
        return freeBoardRepository.hotWeekList(sqlSession);
    }

    public FreeBoardArray selectArrayList(String select) {
        List<FreeBoard> freeBoardList = freeBoardRepository.selectArrayList(sqlSession,select);
        return new FreeBoardArray(freeBoardList);
    }
}
