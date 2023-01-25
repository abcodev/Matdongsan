package com.project.board.freeBoard.controller;

import com.project.board.freeBoard.service.FreeBoardService;
import com.project.board.freeBoard.vo.FreeBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/fboard")
public class FreeBoardContoller {

    @Autowired
    private FreeBoardService boardService;

    @RequestMapping("/flist/{boardCode}")
    public String selectFlist(
            @PathVariable("boardCode") String boardCode,
            @RequestParam(value = "fpage", required = false, defaultValue = "1") int currentPage,
            Model model,
            @RequestParam Map<String, Object> paramMap) {
        Map<String, Object> map = new HashMap();

        if (paramMap.get("condition") == null) {

            map = boardService.selectFlist(currentPage, boardCode);

        } else {
            paramMap.put("fpage", currentPage);
            paramMap.put("boardCode", boardCode);

            map = boardService.selectFlist(paramMap);

        }

        model.addAttribute("map", map);

        return "board/freeBoardList";


    }
}
