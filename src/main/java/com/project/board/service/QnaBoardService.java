package com.project.board.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.board.dao.QnaBoardDao;
import com.project.board.dto.*;
import com.project.board.vo.Report;
import com.project.board.vo.QnaBoard;
import com.project.common.template.PageInfoCombine;
import com.project.common.template.Pagination;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class QnaBoardService {

    private final QnaBoardDao boardDao;
    private final SqlSession sqlSession;
    private final Pagination pagination;
    private final AlarmService alarmService;

    private static final int DEFAULT_RES_SIZE = 8;

    public QnaBoardListResponse selectQnaList(QnaBoardListRequest req) {
        QnaBoardListFilter filter = QnaBoardListFilter.from(req);
        int count = boardDao.selectQnaListCount(sqlSession,filter);
        PageInfoCombine pageInfoCombine = new PageInfoCombine(count, req.getCurrentPage(), DEFAULT_RES_SIZE);
        List<QnaBoard> result = boardDao.selectQnaList(sqlSession, pageInfoCombine, filter);
        return new QnaBoardListResponse(result,pageInfoCombine);
    }

    public int insertQboard(QnaBoard qb) {
        return boardDao.insertQboard(sqlSession, qb);
    }

    public int insertNotice(QnaBoard qb){ return boardDao.insertNotice(sqlSession, qb); }

    public QnaBoard selectQboard(int qBno){
        return boardDao.selectQboard(sqlSession,qBno);
    }

    public int updateBoard(int qBno){
        return boardDao.updateBoard(sqlSession,qBno);
    }

    public int increaseCount(int qBno){
        return boardDao.increaseCount(sqlSession,qBno);
    }

    public int insertAnswer(QnaBoard qb){
        QnaBoard qnaBoard = boardDao.selectByQnaBno(sqlSession, qb.getParentBno());
        long receiverNo = qnaBoard.getMemberNo();

        AlarmTemplate<Integer> template = AlarmTemplate.generateNewQnaMessageTemplate(receiverNo, qnaBoard.getQnaBno());
        alarmService.send(template);

        return boardDao.insertAnswer(sqlSession,qb);
    }

    public List<QnaBoard> selectAnswer(int qBno){
        return boardDao.selectAnswer(sqlSession,qBno);
    }

    public int deleteBoard(int qBno){
        return boardDao.deleteBoard(sqlSession,qBno);
    }

    public int insertReport(Report report){
        return boardDao.insertReport(sqlSession, report);
    }


    public int selectReportList() {
        return boardDao.selectReportList(sqlSession);
    }

    public List<QnaBoard> selectQaNoticeList(){ return boardDao.selectQaNoticeList(sqlSession); }

}
