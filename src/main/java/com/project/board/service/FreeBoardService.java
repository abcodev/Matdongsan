package com.project.board.service;

import com.project.board.dto.FreeBoardArray;
import com.project.board.dto.FreeBoardCountDto;
import com.project.board.dto.FreeBoardListRequest;
import com.project.board.dto.FreeBoardListResponse;
import com.project.board.vo.FreeBoard;
import com.project.board.vo.HotWeek;
import com.project.board.vo.Reply;
import com.project.board.vo.Report;
import com.project.member.vo.Member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public interface FreeBoardService {

    FreeBoardListResponse selectFreeList(FreeBoardListRequest req);

    public List<Report> selectReportList();

    public int insertFboard(FreeBoard fb);

    public int insertNotice(FreeBoard fb);

    public FreeBoard detailFreeBoard(int fno);

    public int insertReply(Reply r);

    public ArrayList<Reply> selectReplyList(int fno);

    public int deletePost(int fno);

    public int updatePost(FreeBoard freeBoard);

    public int insertReport(Report report);

    public int deleteReply(Reply reply);

    void freeBoardCount(FreeBoardCountDto count);

    List<HotWeek> hotWeekList();

    FreeBoardArray selectArrayList(String select);
}
