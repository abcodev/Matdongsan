package com.project.board.controller;

import com.project.board.service.FreeBoardService;
import com.project.board.vo.FreeBoard;
import com.project.common.type.StateList;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class FreeBoardContoller {

    private final FreeBoardService freeBoardService;
    @Autowired
    private FreeBoardService boardService;

    @RequestMapping("/freeList")
    public String selectFreeList(ModelAndView modelAndView) {
//        ArrayList<FreeBoard> freeBoardList = freeBoardService.sele;
        return "board/freeBoardList";
    }
}
