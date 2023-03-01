package com.project.board.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.board.repository.QnaBoardRepository;
import com.project.board.dto.*;
import com.project.board.vo.Report;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class QnaBoardService {

    private final QnaBoardRepository boardRepository;
    private final SqlSession sqlSession;
    private final AlarmService alarmService;

    private static final int DEFAULT_RES_SIZE = 8;

    public QnaBoardListResponse selectQnaList(QnaBoardListRequest req) {
        QnaBoardListFilter filter = QnaBoardListFilter.from(req);
        int count = boardRepository.selectQnaListCount(sqlSession, filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_RES_SIZE);
        List<QnaBoard> result = boardRepository.selectQnaList(sqlSession, pageInfoCombine, filter);
        return new QnaBoardListResponse(result, pageInfoCombine);
    }

    public int insertQboard(QnaBoard qb) {
        return boardRepository.insertQboard(sqlSession, qb);
    }

    public int insertNotice(QnaBoard qb) {
        return boardRepository.insertNotice(sqlSession, qb);
    }

    public QnaBoard selectQboard(int qBno) {
        return boardRepository.selectQboard(sqlSession, qBno);
    }

    public int updateBoard(int qBno) {
        return boardRepository.updateBoard(sqlSession, qBno);
    }

    public int increaseCount(int qBno) {
        return boardRepository.increaseCount(sqlSession, qBno);
    }

    public int insertAnswer(QnaBoard qb) {
        QnaBoard qnaBoard = boardRepository.selectByQnaBno(sqlSession, qb.getParentBno());
        long receiverNo = qnaBoard.getMemberNo();

        AlarmTemplate<Integer> template = AlarmTemplate.generateNewQnaMessageTemplate(receiverNo, qnaBoard.getQnaBno());
        alarmService.send(template);

        return boardRepository.insertAnswer(sqlSession, qb);
    }

    public List<QnaBoard> selectAnswer(int qBno) {
        return boardRepository.selectAnswer(sqlSession, qBno);
    }

    public int deleteBoard(int qBno) {
        return boardRepository.deleteBoard(sqlSession, qBno);
    }

    public int insertReport(Report report) {
        return boardRepository.insertReport(sqlSession, report);
    }


    public int selectReportList() {
        return boardRepository.selectReportList(sqlSession);
    }

    public List<QnaBoard> selectQaNoticeList() {
        return boardRepository.selectQaNoticeList(sqlSession);
    }

}
