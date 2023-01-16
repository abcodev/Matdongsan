package com.project.board.qnaBoard.controller;

import com.project.board.qnaBoard.service.QnaBoardService;
import com.project.board.qnaBoard.vo.QnaBoard;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class QnaBoardController {

    private QnaBoardService boardService;


    @RequestMapping(value = "/qlist.bo", method = RequestMethod.GET)
    public String selectList(
            @RequestParam(value = "cpage", defaultValue = "1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap
            ) {

        Map<String, Object> map = new HashMap();

        if (paramMap.get("condition") == null) {
            map = boardService.selectList(currentPage);
        } else {
            paramMap.put("cpage", currentPage);
            map = boardService.selectList(paramMap);
        }

        model.addAttribute("map", map);

        return "board/qnaBoardList";

    }

}
