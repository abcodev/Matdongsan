package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import org.springframework.stereotype.Controller;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaBoardController {
    private QnaBoardService boardService;
 /*   @RequestMapping("/boardQnaMain")
   public QnaBoard selectBoardList(int bno) {
        QnaBoard b = qnaBoardService.selectBoardList(bno);
    }*/

}
