package com.project.board.service;

import com.project.alarm.dto.AlarmTemplate;
import com.project.alarm.service.AlarmService;
import com.project.board.dao.QnaBoardDao;
import com.project.board.vo.Report;
import com.project.common.template.PageInfo;
import com.project.board.vo.QnaBoard;
import com.project.common.template.Pagination;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class QnaBoardService {

    private final QnaBoardDao boardDao;
    private final SqlSession sqlSession;
    private final Pagination pagination;
    private final AlarmService alarmService;

    public int selectListCount() {
        return boardDao.selectListCount(sqlSession);
    }
    public int selectListCount(Map<String,Object> paramMap) {
        return boardDao.selectListCount(sqlSession, paramMap);
    }

    public Map<String , Object> selectList(int currentPage){
        Map<String , Object> map = new HashMap();
        int listCount = selectListCount();
        int pageLimit = 10;
        int boardLimit = 15;
        PageInfo pi = pagination.getPageInfo(listCount, currentPage, pageLimit, boardLimit);
        map.put("pi",pi);
        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession,pi);
        map.put("list", list);
        return map;
    }

    public Map<String, Object> selectList(Map<String,Object> paramMap){

        Map<String, Object> map = new HashMap();

        int listCount = selectListCount(paramMap);

        int pageLimit = 10;
        int boardLimit = 15;
        PageInfo pi = pagination.getPageInfo(listCount, (Integer) paramMap.get("cpage"), pageLimit, boardLimit);
        paramMap.put("pi", pi);

        map.put("pi", pi);


        ArrayList<QnaBoard> list = boardDao.selectList(sqlSession, paramMap);
        map.put("list", list);

        return map;
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

        AlarmTemplate template = AlarmTemplate.generateNewQnaMessageTemplate(receiverNo);
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
}
