package com.project.board.service;

import com.project.board.dto.QnaBoardListRequest;
import com.project.board.dto.QnaBoardListResponse;
import com.project.board.vo.QnaBoard;
import com.project.board.vo.Report;

import java.util.List;


public interface QnaBoardService {

    QnaBoardListResponse selectQnaList(QnaBoardListRequest req);
    public int selectReportList();
    public int insertQboard(QnaBoard qb);
    public int insertNotice(QnaBoard qb);
    public QnaBoard selectQboard(int qBno);
    public int updateBoard(int qBno);
    public int increaseCount(int qBno);
    public int insertAnswer(QnaBoard qb);
    public List<QnaBoard> selectAnswer(int qBno);
    public int deleteBoard(int qBno);
    public int insertReport(Report report);
}
