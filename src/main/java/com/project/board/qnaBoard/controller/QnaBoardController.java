package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class QnaBoardController {

    private QnaBoardService boardService;


  /*  @RequestMapping("/qlist.bo")
    public String selectList(Model model,
    @RequestParam Map<String, Object> paramMap){
        Map<String, Object> map = new HashMap();
        map = boardService.selectList();

         model.addAttribute("map",map);

         return "board/qnaBoardList";
    }*/



}
